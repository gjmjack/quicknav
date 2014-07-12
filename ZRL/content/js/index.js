define(
		"index",
		[ "ZrlStrings", "jquery", "md5", "qrcode", "bootstrap" ],
		function(ZrlStrings, $) {
			var host = null;
			var validatePanel = null;
			var encodeResultPanel = null;
			var qrinput = null;
			var qrpicture = null;
			var sourceBlock = null;
			var messageBar = null;
			var indexConfig = {
				VerifyCodeUrl : '/v/newentry.html',
				EncodeUrl : '/encode.html'
			};
			function getResultPanel(url) {

				if (!encodeResultPanel) {
					var outputControl = $(
							'<input class="form-control shorten-result"  data-toggle="tooltip" data-placement="bottom" title="'
									+ ZrlStrings.CopyTooltip
									+ '"  readonly="readonly" type="text" value="" tabindex="2">')
							.click(function() {
								$(this).focus();
								$(this).select();
							}).tooltip({});
					qrinput = outputControl;
					qrpicture = $('<div class="input-group"/> ');
					sourceBlock = $('<p class="help-block" data-toggle="tooltip" data-placement="top" title="" style="word-wrap: break-word;"></p>');

					var p = $('<div style="display:none;" class="well"/>')
							.append(
									$('<div class="row">')
											.append(
													$('<div class="col-lg-8"/>')
															.append(
																	$(
																			'<div class="input-group"/>')
																			.append(
																					outputControl)))
											.append(
													$('<div class="col-lg-4"/>')
															.append(qrpicture)))
							.append('<hr />')
							.append(
									$('<div class="row"/>')
											.append(
													$(
															'<div class="col-lg-10"/>')
															.append(sourceBlock))
											.append(
													$(
															'<div class="col-lg-2"></div>')
															.append(
																	$(
																			'<button class="btn btn-default">'
																					+ ZrlStrings.BtnClose
																					+ '</button>')
																			.click(
																					function() {
																						p
																								.fadeOut();
																					}))));
					encodeResultPanel = p;
				}
				return encodeResultPanel;
			}

			function showMessage(msg) {
				messageBar.text(msg);
				messageBar.fadeIn();
			}

			function showEncodeResult(data) {
				if ($.isPlainObject(data)) {
					cacheData(data);
					if (data.result == 'true') {
						// validatePanel.hide();

						var result = getCurrentHost() + data.data;
						if (encodeResultPanel == null) {
							$('.zrl-group').append(getResultPanel());
						}
						if (qrinput.val() != result) {
							qrpicture.empty().qrcode({
								height : 128,
								width : 128,
								text : result
							});

							var cava = qrpicture.first();
							cava.tooltip({
								"title" : ZrlStrings.ScanQRCodePlease,
								placement : "bottom",
							});
							qrinput.val(result);
							sourceBlock
									.text(ZrlStrings.SourceUrl + data.source)
									.tooltip({
										"title" : data.source
									});
						}
						encodeResultPanel.fadeIn();
						qrinput.click();
						enableInput(true);
						refreshRecent();
					} else {
						showMessage(ZrlStrings['EncodeErrorCode'
								+ data.errorcode]);
					}
				} else {
					showMessage(ZrlStrings.ShortenFailedInvalidData + data);
				}
			}

			function getCurrentHost() {
				if (!host) {
					var rg = new RegExp("zrl\.so$", "i");
					if (rg.test(window.location.host)) {
						host = "http://zrl.so/";
					} else {
						host = window.location.protocol + "//"
								+ window.location.host + "/";
					}
				}
				return host;
			}

			function focusInput(inputControl) {
				var i = 3;
				var fn = function() {
					if (i % 2 == 1) {
						inputControl.focus();
					} else {
						inputControl.blur();
					}
					i--;
					if (i > 0) {
						window.setTimeout(fn, 200);
					}
				};
				window.setTimeout(fn, 200);
			}

			function getDatafromCache(key) {
				return $("#sourceUrl").data(key);
			}

			function cacheData(data) {
				$("#sourceUrl").data(data.md5key, data);
			}

			function getValidatePanel() {

				if (!validatePanel) {
					messageBar = $('<div class="alert alert-warning" style="display:none;"></div>');
					var verify = $('<button class="btn btn-default disabled" type="button">'
							+ ZrlStrings.BtnVerify + '</button>');

					var verifyInputvalue = $('<input type="text"  autocomplete="off" class="form-control" placeholder="'
							+ ZrlStrings.InputVerifyCodePlaceHolder
							+ '" maxlength="4">');
					var img = $(
							'<img title="' + ZrlStrings.RefreshImgeTooltip
									+ '" class="verify-img" src="'
									+ indexConfig.VerifyCodeUrl + '"/>').click(
							function() {
								verifyInputvalue.val("");
								refreshImage.apply(this);
							});
					var imgcontainer = $(
							' <div class="verify-container image-loading "></div>')
							.append(img);

					var panel = $(
							' <div id="verifyPanel" style="display:none;" class="well"></div>')
							.append(
									$('<div></div>')
											.append(imgcontainer)
											.append(
													ZrlStrings.RefreshImgeTooltip));

					verify.click(function() {

						var verifyCode = verifyInputvalue.val();
						if (verifyCode == '' || verifyCode.length != 4) {
							focusInput(verifyInputvalue);
							return;
						}
						var surl = getUrl();

						if (!validateUrl(surl)) {
							return;
						}
						var key = $.md5(surl);

						var data = {
							data : surl,
							md5key : key,
							validateKey : verifyInputvalue.val()
						};

						$.post(indexConfig.EncodeUrl, data,
								function(resultObj) {
									resultObj.source = surl;
									showEncodeResult(resultObj);
								});
					});

					verifyInputvalue.keyup(function(keyEvent) {

						if ($(this).val() != '' && $(this).val().length == 4) {
							verify.removeClass('disabled');
							messageBar.hide();
						} else {
							if (!verify.hasClass('disabled')) {
								verify.addClass('disabled');
							}
						}

						if (keyEvent.keyCode == 13) {
							verify.click();
						}
					});
					var cancel = $(
							'<button class="btn btn-default" type="button">'
									+ ZrlStrings.BtnCancel + '</button>')
							.click(function() {
								panel.fadeOut();
								enableInput(true);
							});

					panel.append(
							$('<div class="input-group"/>').append(
									verifyInputvalue).append(
									$('<span class="input-group-btn"/>')
											.append(verify).append(cancel)))
							.append(messageBar);
					validatePanel = panel;
				}
				return validatePanel;
			}

			var imageFlag = false;

			function refreshImage() {
				if (imageFlag) {
					return;
				}
				imageFlag = true;
				$(this).fadeOut();
				var temp = this;
				window.setTimeout(function() {
					$(temp).prop("src", indexConfig.VerifyCodeUrl).fadeIn(500);
					imageFlag = false;
				}, 1000);
			}

			function getUrl() {
				var surl = $("#sourceUrl").val();
				if (surl == '') {
					focusInput($("#sourceUrl"));
					return '';
				}
				/*
				 * var rg = /^(https?|ftp|file):///i; if (!rg.test(surl)) { surl =
				 * "http://" + surl; }
				 */
				return surl;
			}

			function validateUrl(url) {
				if (url == '') {
					return false;
				}
				var rg = new RegExp(
						"^(https?)://([a-zA-Z0-9]+\.)?zrl\.so/([0-9a-zA-Z]+$)",
						"i");
				if (rg.test(url)) {
					alert(ZrlStrings.UrlCannotBeShorten);
					return false;
				}
				return true;
			}

			function iniInput() {
				$("#sbox-bt").click(function() {

					var surl = getUrl();

					if (!validateUrl(surl)) {
						return;
					}
					var key = $.md5(surl);

					var data = getDatafromCache(key);

					if (data) {
						data.source = surl;
						showEncodeResult(data);
					} else {
						data = {
							data : surl,
							md5key : key,
							validateKey : ""
						};
						$.post(indexConfig.EncodeUrl, data,
								function(resultObj) {
									resultObj.source = surl;
									showEncodeResult(resultObj);
								});
						// verifyInput();
					}
					;
				});
				$("#sourceUrl").tooltip({
					title : ZrlStrings.InputUrlHint,
					placement : 'top'
				}).keyup(function(event) {
					if (event.which == 13) {
						$("#sbox-bt").click();
					}
				});
			}

			function enableInput(enable) {
				if (enable) {
					$('#sourceUrl').prop('readonly', null);
					$('#sbox-bt').removeClass('disabled');
				} else {
					$('#sbox-bt').addClass('disabled');
					$('#sourceUrl').prop('readonly', 'readonly');
				}
			}

			function verifyInput() {
				if (encodeResultPanel != null) {
					encodeResultPanel.hide();
				}
				enableInput(false);
				if (validatePanel == null) {
					$('.zrl-group').append(getValidatePanel());
					validatePanel.fadeIn();
				} else {
					if (validatePanel.css('display') == "none") {
						validatePanel.find('img').click();
						validatePanel.fadeIn();
					}
				}
			}

			function showhistory(data, id) {
				$("#" + id).empty();

				for ( var i = 0; i < data.length; i++) {
					var tr = $("<tr />");
					if (i % 2 == 0) {
						tr.addClass("active");
					}
					var su = getCurrentHost() + data[i].ShortUrl;
					var visit = data[i].VisitCount == null ? 0
							: data[i].VisitCount;
					tr.append($("<td>" + (i + 1) + "</td>"));
					tr.append($("<td><a href=\"" + su + "\" target=\"_blank\">"
							+ su + "</a></td>"));
					var orl = data[i].OriginalUrl;
					var orlview = $("<td/>");

					if (orl && orl.length > 50) {
						orl = orl.substring(0, 50) + "...";
						orlview.attr("title", data[i].OriginalUrl);
					}
					var rg = new RegExp("^(https?)://.+$", "i");
					if (rg.test(orl)) {
						orlview.append($("<a href=\"" + su
								+ "\" target=\"_blank\">" + orl + "</a>"))
					} else {
						orlview.append(orl);
					}

					tr.append(orlview);
					tr.append($("<td>" + data[i].CreateTime + "</td>"));
					tr.append($("<td>" + visit + "</td>"));
					$("#" + id).append(tr);

				}
			}

			function refreshRecent() {
				$.get("/History/showrecent.html", function(data) {
					if (data) {
						showhistory(data, "recent");

					}

				});
			}

			function refreshPopular() {
				$.get("/History/showpopular.html", function(data) {
					if (data) {
						showhistory(data, "popular");

					}

				});
			}

			$(document).ready(function() {
				iniInput();
				// refreshRecent();
				// refreshPopular();
			});

		});