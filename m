Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE90E6E1AAE
	for <lists+linux-man@lfdr.de>; Fri, 14 Apr 2023 05:19:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229733AbjDNDTz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Apr 2023 23:19:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229721AbjDNDTy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Apr 2023 23:19:54 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4A3E3AAD
        for <linux-man@vger.kernel.org>; Thu, 13 Apr 2023 20:19:52 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-94a34a0baf9so393884766b.1
        for <linux-man@vger.kernel.org>; Thu, 13 Apr 2023 20:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681442391; x=1684034391;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2p01aZucRjCjHqNpEO3KSovRQ3eEwAtwYXw1I3we6Yg=;
        b=NhJ2aeVidg2OdjZhduYixyK1pMNNK+CDW3aYeH/CA4QReL9Izg42kC4xw1cxynPHUe
         dwlYlCh6qaFSJqKE2bj47o3YLTrHDb+eLMCkiR5t5Xuq7OaGkLMsqfy7dIwLLV+GCe/j
         4xdTNUc4abAZTDTJ0akyxIp3jKMXh4Da/W5opziS4rFrgSzEzkIC5uPKjB2IKHgAJ/4g
         OChl5PW87NNE+7IOgO2uIRmxrpH38gMHKtCMGKuSZs+4lW1WdEBETpEc6aD2b/sDTUTI
         D3OP4BexL558fIHHRvjx0ioALbOkZKroTeU42/WzkkIRMXPHYqhD2HdK5TyUomfvn0tf
         zK8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681442391; x=1684034391;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2p01aZucRjCjHqNpEO3KSovRQ3eEwAtwYXw1I3we6Yg=;
        b=SBC4nwZL4UY+5LbAH3rQCXrkXdnVB62h/YITrCDg0BTMGA5AKM/R44Boq5/9Ny1Qhd
         tO71jeVt5MB5ogqqWKkHRub0zmrab/r1ul0KOeLLSTQuwudxJXbVaF5TMTeW/GQIpScy
         taEnoSOgWE/mZ43PSR4uyhqgH2FllzvcA6ErJnyp/8fiwQsy1EkrSnBSIW6S19TgcUiX
         /Csa9W6GsSyqeZOuWJDrF5ieqelTbRf25vgUAEA602fYqhEdZOhZU380xT+6/1j5oKsp
         hc0wb7ctuoZDGtko/JBhDiyqz1wB1eH6T7a3KsyNZ1XxV63aa+Tkp3rkg2c5q2XjsXzp
         fAXw==
X-Gm-Message-State: AAQBX9dfVZRJlVp1kjTUiFK5U0oi2w1ZCm3XXqzKgyvxT24eORbPZ0vL
        od8/GT6v1btG6+Svs4RL/5o9By0ffj4=
X-Google-Smtp-Source: AKy350Z3airKA2ejpdBsSV9By7LC/6+vjo1h2xAoKWHSe7cQl7k8QjOl3ZtSf9L6UwMovRP8RlsTng==
X-Received: by 2002:aa7:d499:0:b0:4fa:56dc:b6e6 with SMTP id b25-20020aa7d499000000b004fa56dcb6e6mr4606834edr.16.1681442390995;
        Thu, 13 Apr 2023 20:19:50 -0700 (PDT)
Received: from dj3ntoo (87.sub-72-108-136.myvzw.com. [72.108.136.87])
        by smtp.gmail.com with ESMTPSA id f4-20020a1709062c4400b0094e0b5e99e8sm1776249ejh.138.2023.04.13.20.19.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Apr 2023 20:19:50 -0700 (PDT)
Date:   Thu, 13 Apr 2023 22:19:46 -0500
From:   Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] bin/stdc: Improve output formatting
Message-ID: <ZDjGUp5t5Fefb+zW@dj3ntoo>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
        linux-man@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Remove leading whitespace and collapse multi-line declarations into a
single line using (g)awk.

Signed-off-by: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
---

Here's a snippet for comparison. I've manually removed some of the
formatting repeats from C99 and C11 output for the sake of making this
message shorter.

Original:

    $ ./stdc c89 '[[:alpha:]]*scanf'
             int fscanf(FILE *stream, const char *format, ...);
             int scanf(const char *format, ...);
             int sscanf(const char *s, const char *format, ...);

    $ ./stdc c99 '[[:alpha:]]*scanf'
          int fscanf(FILE * restrict stream,
               const char * restrict format, ...);
          int scanf(const char * restrict format, ...);
            int fwscanf(FILE * restrict stream,
                 const wchar_t * restrict format, ...);
            int wscanf(const wchar_t * restrict format, ...);

    $ ./stdc c11 '[[:alpha:]]*scanf'
          int fscanf(FILE * restrict stream,
               const char * restrict format, ...);
          int scanf(const char * restrict format, ...);
            int vsscanf(const char * restrict s,
                 const char * restrict format, va_list arg);

New:

    $ ./stdc c89 '[[:alpha:]]*scanf'
    int fscanf(FILE *stream, const char *format, ...);
    int scanf(const char *format, ...);
    int sscanf(const char *s, const char *format, ...);

    $ ./stdc c99 '[[:alpha:]]*scanf'
    int fscanf(FILE * restrict stream, const char * restrict format, ...);
    int scanf(const char * restrict format, ...);
    int fwscanf(FILE * restrict stream, const wchar_t * restrict format, ...);
    int wscanf(const wchar_t * restrict format, ...);

    $ ./stdc c11 '[[:alpha:]]*scanf'
    int fscanf(FILE * restrict stream, const char * restrict format, ...);
    int scanf(const char * restrict format, ...);
    int vsscanf(const char * restrict s, const char * restrict format, va_list arg);

 bin/stdc | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/bin/stdc b/bin/stdc
index b685df8..8c07956 100755
--- a/bin/stdc
+++ b/bin/stdc
@@ -14,7 +14,14 @@ err()
 
 grep_proto()
 {
-	pcre2grep -M "(?s)\b$1 *\([[:alnum:]*,._\s\(\)-]*\);$";
+	pcre2grep -M "(?s)\b$1 *\([[:alnum:]*,._\s\(\)-]*\);$" \
+	| awk -e 'BEGIN { RS=";\n"; ORS=RS; }
+		{
+			gsub(/\n/, " ");
+			sub(/^ +/, "");
+			gsub(/ +/, " ");
+			print;
+		}';
 }
 
 libc_summ_c89()
-- 
2.39.2

