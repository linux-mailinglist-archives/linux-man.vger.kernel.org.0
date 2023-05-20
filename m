Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E852270A7A7
	for <lists+linux-man@lfdr.de>; Sat, 20 May 2023 14:08:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229563AbjETMIo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 May 2023 08:08:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229523AbjETMIo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 May 2023 08:08:44 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05A40C6
        for <linux-man@vger.kernel.org>; Sat, 20 May 2023 05:08:43 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-30950eecc1eso2032529f8f.0
        for <linux-man@vger.kernel.org>; Sat, 20 May 2023 05:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684584521; x=1687176521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HsSuooZVojpFkC00ytq8eHj4X9GcPSX6KBw0ljv4RRc=;
        b=jVMZ+AzEQj0dmlQxpbzlWpY7/gkx//0MFeMxhUQjAbYf3dGNSr4mUmCs3UOBwRkoTK
         kGhAacpMcmzjrN5/PfUfMi6nXoq+LBjFZaTV+rZP0nTmyRMjY/MRdcqng0Aw0+pOaiIW
         RnLq8rHPKgJxPl6xCQiXI6ei5ZjetBbVmQLTP6TCRwH0mu6FZ5l1e1AhMxVsUxi67ggC
         FNbNXykTug/HJ++jYISPMmFB6Vxe5EqXXCLHhyuSY9JMXJoRgrzWJ96WFpqh/KxAU7Oz
         91B8/fRbdH0Xt3Rw7POqrHEwGFYTpwza2f0++75Vj4B5JURio1MXdm9QwjpAICxatQAK
         A1vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684584521; x=1687176521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HsSuooZVojpFkC00ytq8eHj4X9GcPSX6KBw0ljv4RRc=;
        b=Dve5My3t7WXx7Z3r4OQyxgw4gP8a7X2Dtob0s+k8TbGHP0xBtjw6MmYF7MBj4yuR8l
         d/YpTcKxo45qwJbDee+P3OIgbw9+AHLsbag1aN8InPsrCm3JgmYss4j2O0XZPOjh+ES+
         ui638tGsKbRpiOK5zriik6kpKAe1vzev7KTzXySwVhBTCs2a5ponRMNLOsNPgwfnNn57
         4sjFZuUVVVAwspweJwVKoTh92fRe2gJJ4sYAZupN645cwzLa8nuFE2DKczA6ZggD1dKw
         GAOu5dyoLn+mzI7WDW5/jYA6hX4MHUPzdKYxbc5avDlQlc7Lc99/NT+LujKxevnZTzoG
         6yRQ==
X-Gm-Message-State: AC+VfDxu4kdOuB1+rZw+hoS7iZcF0l7YTHfldY5unLcuoeEN1Y6/0hkW
        TWY8V+WLE5jCzV00FUAHG7PZBNZMwSA=
X-Google-Smtp-Source: ACHHUZ4XOFdcG1FMXWSSxCvIdPhLyGk+Uo9E+l8hCxoxrXcGEqeOPFHG2IBnQDSi85MsB9eWN3C5oQ==
X-Received: by 2002:a5d:68cd:0:b0:307:cf55:a7d8 with SMTP id p13-20020a5d68cd000000b00307cf55a7d8mr3997187wrw.42.1684584521173;
        Sat, 20 May 2023 05:08:41 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id g17-20020a05600c311100b003f4283f5c1bsm17834071wmo.2.2023.05.20.05.08.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 May 2023 05:08:40 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Reuben Thomas <rrt@sc3d.org>,
        Steffen Nurpmeso <steffen@sdaoden.eu>,
        Bruno Haible <bruno@clisp.org>,
        Martin Sebor <msebor@redhat.com>,
        Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v1b] iconv.3: Clarify the behavior when input is untranslatable
Date:   Sat, 20 May 2023 14:04:59 +0200
Message-Id: <20230520120458.6681-1-alx@kernel.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <CAOnWdoiYKybuDioeG01szmZAL_zkoU4RTqiP=ca6z6bqVj+OQA@mail.gmail.com>
References: <CAOnWdoiYKybuDioeG01szmZAL_zkoU4RTqiP=ca6z6bqVj+OQA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Reuben Thomas <rrt@sc3d.org>

The manual page does not fully reflect the behaviour of glibc's
iconv(3).  The manual page says:

    The conversion can stop for four reasons:

    -  An invalid multibyte sequence is encountered in the input.  In
       this case, it sets errno to EILSEQ and returns (size_t) -1.
       *inbuf is left pointing to the beginning of the invalid multibyte
       sequence.

    [...]

The phrase "An invalid multibyte sequence is encountered in the input"
is confusing, because it suggests that it refers only to the validity of
the input per se (e.g. a non-UTF-8 sequence in input purporting to be
UTF-8).

However, according to the original author of the manual page, Bruno
Haible[1], it also refers to input that cannot be translated to the
desired output encoding; and indeed, glibc's iconv returns EILSEQ when
the input cannot be translated, even though it is valid.

This patch adds language that reflects the actual behavior.

Link: [1] <https://sourceware.org/bugzilla/show_bug.cgi?id=29913#c4>
Link: <https://bugzilla.kernel.org/show_bug.cgi?id=217059>
Signed-off-by: Reuben Thomas <rrt@sc3d.org>
Cc: Steffen Nurpmeso <steffen@sdaoden.eu>
Cc: Bruno Haible <bruno@clisp.org>
Cc: Martin Sebor <msebor@redhat.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi,

I'm resending Reuben's patch inline CCing all interested parties.  I'm,
similarly to Steffen, not convinced that invalid input englobes output
errors.  So, I think it would be better to split it into 2 different
reasons, so that we have a 5th reason for the error.

I also slightly tweaked the commit log regarding formatting.

What do you think about having a 5th reason?

Cheers,
Alex

 man3/iconv.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/iconv.3 b/man3/iconv.3
index 66f59b8c3..e8694ca12 100644
--- a/man3/iconv.3
+++ b/man3/iconv.3
@@ -73,7 +73,8 @@ .SH DESCRIPTION
 such input is called a \fIshift sequence\fP.
 The conversion can stop for four reasons:
 .IP \[bu] 3
-An invalid multibyte sequence is encountered in the input.
+An multibyte sequence is encountered in the input which is either invalid,
+or cannot be translated to the character encoding of the output.
 In this case,
 it sets \fIerrno\fP to \fBEILSEQ\fP and returns
 .IR (size_t)\ \-1 .
-- 
2.40.1

