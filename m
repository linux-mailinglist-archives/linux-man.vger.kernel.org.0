Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1288B4E1916
	for <lists+linux-man@lfdr.de>; Sun, 20 Mar 2022 01:04:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243922AbiCTAFn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 19 Mar 2022 20:05:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239436AbiCTAFn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 19 Mar 2022 20:05:43 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A09310E040
        for <linux-man@vger.kernel.org>; Sat, 19 Mar 2022 17:04:21 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id r13so1249215wrr.9
        for <linux-man@vger.kernel.org>; Sat, 19 Mar 2022 17:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to:cc:from
         :subject:content-transfer-encoding;
        bh=agrTQyebvTGcU5YVKbN8JkNvE40galg2cD7qCDmxR7U=;
        b=hK82bN4f36rhhz0Y6k4ReIwaTTOSJywN1dBe8MqOTmjg9WEsNnSCWaOD8LNLmQTfAU
         4YC5gM3f3Sv4P5bzuAREBLZUQrF1GbIhXZoKmmUqw2zizmw+vFu9ocR3QHh2Q0Vih1EX
         //JCWzpSglamwoIRcL5PZafZz6SVAvjnbrI8xay8pRb+JLXAtZePhMMokIj8RD2aO7s2
         HFo/cSJTnHBwpeFVypqTdfTV19nzWDlo2pLJ8/69U0ViboIcFEujwD9mZlHeAkj6q7SY
         4HstklzKAKVsOvbNEE5vUWZafbrUJBRnocaleFvCAnAmVvs7YBcAqbJrG1a/ND9LE2JR
         csVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:cc:from:subject:content-transfer-encoding;
        bh=agrTQyebvTGcU5YVKbN8JkNvE40galg2cD7qCDmxR7U=;
        b=BUZLVeAyciRy09SVBxj5hGOxPl0y5+XBxmZc/qu5iJw++3jRYKng8xtiHtwfwXfVZP
         BYepE1PgUMxIhJ8SFaYLRwXRxvsvp6GPSUxWWQcQzgxCsCnySuq8glgJeMjsxWiIJLfj
         WtmfTdnEf49xnzFoRKWA5fqQ9zpNaMZ1Js1yA/vQ33h+c9Ak7v/+Z6OY0w6XCxVqaBS9
         BVZAchWrcg//9bPcH+BIWj7YtlD1/4bIDJFwf9HOKCwNV7Astq9uc5Q8FvlanLM457ns
         oo6O70TVb0iOo/wG1qxHCmnFxJO8FMx0FbUOPO36y7VF1YUrVD+L3XFgryM+hin40Zyo
         h3MA==
X-Gm-Message-State: AOAM533orpw5aNoLDe/KDJ8oUCfLm2ak7tkpZqYDa6OgQ8Am2j3YJdJF
        S4CwOx3p207qsYMTudtW790FQ5VfVCpoIrKa
X-Google-Smtp-Source: ABdhPJyq9X5KsHvuwn8PW+BJudae3fWniEjQzNR1Nh+fhVLfMUHulNwmNVaJvEWY436PUZ+pU6q0hQ==
X-Received: by 2002:adf:fbc6:0:b0:203:8dff:f49e with SMTP id d6-20020adffbc6000000b002038dfff49emr12941994wrs.72.1647734659019;
        Sat, 19 Mar 2022 17:04:19 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n8-20020adf8b08000000b001f046cc8891sm9638181wra.24.2022.03.19.17.04.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Mar 2022 17:04:18 -0700 (PDT)
Message-ID: <9e2a2f6d-d086-4570-2d22-f218fdb0e686@gmail.com>
Date:   Sun, 20 Mar 2022 01:04:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     groff@gnu.org, linux-man <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Review incorrect man-pages commit
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

Michael introduced the following commit, which is incorrect (triggers a
groff(1) error; see below).  Do you know what is intended here?
Could you please propose a fix?

Thanks,

Alex



LINT (groff)	tmp/lint/man7/glob.7.lint.groff.touch
troff	man7/glob.7	195	 error	 '\`' is not allowed in an escape name
troff	man7/glob.7	195	 warning	 can't find special character ''



commit 7b97eb9ff04e69eacbe34a32c1089fcf6613b5f6
Author: Michael Kerrisk <mtk.manpages@gmail.com>
Date:   Thu Aug 6 22:02:25 2020 +0200

    glob.7, zic.8: Use \` rather than `

    \` produces better rendering in PDF.

    Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>

diff --git a/man7/glob.7 b/man7/glob.7
index 89569b8d9..b04ce821c 100644
--- a/man7/glob.7
+++ b/man7/glob.7
@@ -203,7 +203,7 @@ where the string between "\fI[=\fP" and "\fI=]\fP"
is any collating
 element from its equivalence class, as defined for the
 current locale.
 For example, "\fI[[=a=]]\fP" might be equivalent
-to "\fI[a\('a\(`a\(:a\(^a]\fP", that is,
+to "\fI[a\('a\(\`a\(:a\(^a]\fP", that is,
 to "\fI[a[.a-acute.][.a-grave.][.a-umlaut.][.a-circumflex.]]\fP".
 .SH SEE ALSO
 .BR sh (1),
diff --git a/man8/zic.8 b/man8/zic.8
index 940d6e814..aeca0e726 100644
--- a/man8/zic.8
+++ b/man8/zic.8
@@ -293,7 +293,7 @@ nor
 .q + .
 To allow for future extensions,
 an unquoted name should not contain characters from the set
-.q !$%&'()*,/:;<=>?@[\e]^`{|}\(ti .
+.q !$%&'()*,/:;<=>?@[\e]^\`{|}\(ti .
 .TP
 .B FROM
 Gives the first year in which the rule applies.


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
