Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87E273D9685
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231334AbhG1UUY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231331AbhG1UUV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:21 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EDB9C061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:19 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id d8so4024909wrm.4
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qCV8owMaQp7FNrH9Vt6zInjzBbgUiYAwlKYZG+m3g5U=;
        b=XDqZxi6hbuI7RRiLYe35mHTCj/d1QhmUfj1SZxCsXsRqdbw6iChWt8d7fauFw0z+ct
         TqTeLDpsm8F9icPf6kRk8hAzgiHXlu7jp2lqugrzGtkT4UII1SsMmWy6gmr2ShRJk7kN
         aA5V/7zwF/Ou/YqgQFlr3z8iIF8BWEXUQpg3MSGnfVKwpbom3wEp1/h8Ls/veymMqmYJ
         1EI/ClW3Ns2u5Xz+9DROaGLa5sGedLxVH7FNEf0GTk+Xg/0n4ZG4T3ORvi19RRqPEaur
         09PTWRgE4VN4k89K18SMzAu5EP2cvbg4Hn1q+zbD+u16JXbRCDjNYw2XUyebDEnXr3cP
         fqAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qCV8owMaQp7FNrH9Vt6zInjzBbgUiYAwlKYZG+m3g5U=;
        b=X256ry2onqLt3ojs9scYC92DwPsckjKLF74sbcN4Mo0wMMpfU6ngQX7m/SBaaLTlfg
         KuJBf9Z2qkA1hEWe2vJ7qRMNS/Yuggz6XCXAazDT9BnoAUmeh3mEOOnmClL41fa+RckF
         bMX1rfHxnSz3GvGorEJUcP306kkHpFhsmGd/mDz52tONSBVt+qN1q4uBFWiXZdzQRhru
         l8i4Zn0wPyNcMMLsRPJdH81RBisrlUsTLvbrY4NOiWzyNDaMCYO4kTJVru/eT0vYKhws
         Ti/qjStbDJRKaou1e6Xh5HXJZUy2fK5sqHN+D2g8VRL5O1x8YOE7Nj0ffv7HsAM08GxH
         JoVA==
X-Gm-Message-State: AOAM533Iz4qTdgDKGXEuo7PFIRsgWrO1erAf/HxKGRepHiR4UQ5J7iUr
        ywFc/f7at+MWouLttrObO0o=
X-Google-Smtp-Source: ABdhPJy7p0Q5FQudDQHO+sx/0mV0EvJ38a0StbcmYOM1NCDUZrMFOS5zD9NT53d3qDTc20H9dz8jcg==
X-Received: by 2002:adf:e550:: with SMTP id z16mr1148445wrm.250.1627503617753;
        Wed, 28 Jul 2021 13:20:17 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:17 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Alan Peakall <Alan.Peakall@helpsystems.com>
Subject: [PATCH 05/32] posixoptions.7: Fix legacy functions list (s/getcwd/getwd/)
Date:   Wed, 28 Jul 2021 22:19:41 +0200
Message-Id: <20210728202008.3158-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Alan:

[
The on-line copy of the manual page "posixoptions(7)" dated
2018-04-30 has an entry for "getcwd()" in the section headed
"XSI - _XOPEN_LEGACY - _SC_XOPEN_LEGACY".
I believe that entry should be "getwd()" as that is the API call
which was present in X/Open-6 but withdrawn in X/Open-7.
]

Reported-by: Alan Peakall <Alan.Peakall@helpsystems.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/posixoptions.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/posixoptions.7 b/man7/posixoptions.7
index d2ee10302..d6882fe05 100644
--- a/man7/posixoptions.7
+++ b/man7/posixoptions.7
@@ -968,7 +968,7 @@ The following functions are present:
 .IR fcvt ()
 .IR ftime ()
 .IR gcvt ()
-.IR getcwd ()
+.IR getwd ()
 .IR index ()
 .IR mktemp ()
 .IR rindex ()
-- 
2.32.0

