Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EADC690FFC
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 19:10:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230018AbjBISKd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 13:10:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230031AbjBISKZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 13:10:25 -0500
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D86168126
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 10:10:23 -0800 (PST)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-1685cf2003aso3560236fac.12
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 10:10:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B8/fJk5DHAP3/9tl2RR+Hk2pTzhwvWz1GJc8uUELrzo=;
        b=C/I7a+onEkXd8Pzxr7O1cSLIuqnQrEioMde2mn0jdHG3dfHLMgn1ykEMJC0qoiKtGi
         TMz8LIqdrCRexGdW4J55fddIapGe6+X5ZGJq2iW2z+29OhVgky3+08N3YKnopguUKjLC
         dpN7NK2h+OJQMfznn7dsaDVoeJKpPX8EOKqOUPg6OKyX4EH1NmChe1cukrvXIHK2mlqX
         TwOMe8eqbzPnB2dYuRjem2+2iW4wRXl7jX4vfrZ2UvbYF5/TI5C0kJOfNZpoWGbdcA7O
         U0JZsViT6a9Bo+3Xba8F66gIk9zP30rXPK4meghKrS9tog8oOaMT9p9zwNjsgS/vx/Zp
         4AKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B8/fJk5DHAP3/9tl2RR+Hk2pTzhwvWz1GJc8uUELrzo=;
        b=5nc0cd3PrZDqkC7bkTN+bj40FacH8lg9GzGzq9eK1a8LTJWcMQf2XAvj4wEaoTzEIc
         9xRgrVC7cPPAk3rb9VFgKP2MqwQw1SUEsCnhxDZ71xvX0KbNqE/qyMmmqzCab5Qes5pm
         OX+TdzkC2fzgXIkOD5C2y7LmoImP/p989unssaQVCCSKiTwNMKay9kXNqPr0d0tJED6o
         kfK2dd/K1aEjp2+TDYnYVJGuZ+1e30gdEmQ+Fo0JeKS8d6NugDuXtXIUwvquruKYgJ7l
         hlz61A9Ixg6OCtmlvHGR9aRp265PwqjX8CRkjm25SwbI6fWBimK5UeUpEgxZkwrMq8du
         D3rA==
X-Gm-Message-State: AO0yUKV0lk8pdBYwOkTDG3XPPDT22eRA8goDDc54Qb726YehzhFlT/rm
        CuHhUZsuS0gjTCQeLBsKOiXILBrOlyo=
X-Google-Smtp-Source: AK7set8hCh268TF2ylP7Iv/xFUhxATWBkRanZ46WgeCobpz+aDdRzflvlsvCbYEGQniB4IJurTsQVw==
X-Received: by 2002:a05:6870:b003:b0:163:7563:41a0 with SMTP id y3-20020a056870b00300b00163756341a0mr6486232oae.36.1675966222597;
        Thu, 09 Feb 2023 10:10:22 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id e6-20020a056870944600b0016ac9cbec6bsm436709oal.6.2023.02.09.10.10.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 10:10:22 -0800 (PST)
Date:   Thu, 9 Feb 2023 12:10:20 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 09/20] signal.2, utf-8.7: srcfix
Message-ID: <20230209181020.m27pdmwwmnjzy7hp@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="x3dliwla5bblnart"
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


--x3dliwla5bblnart
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Use `IP` macro instead of `TP` for paragraph tags with no semantic
value.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man2/signal.2 |  9 +++------
 man7/utf-8.7  | 21 +++++++--------------
 2 files changed, 10 insertions(+), 20 deletions(-)

diff --git a/man2/signal.2 b/man2/signal.2
index b21abc3b8..63b81e50f 100644
--- a/man2/signal.2
+++ b/man2/signal.2
@@ -51,20 +51,17 @@ or the address of a programmer-defined function (a "sig=
nal handler").
 If the signal
 .I signum
 is delivered to the process, then one of the following happens:
-.TP 3
-*
+.IP * 3
 If the disposition is set to
 .BR SIG_IGN ,
 then the signal is ignored.
-.TP
-*
+.IP *
 If the disposition is set to
 .BR SIG_DFL ,
 then the default action associated with the signal (see
 .BR signal (7))
 occurs.
-.TP
-*
+.IP *
 If the disposition is set to a function,
 then first either the disposition is reset to
 .BR SIG_DFL ,
diff --git a/man7/utf-8.7 b/man7/utf-8.7
index 5ff634306..0b9a1493f 100644
--- a/man7/utf-8.7
+++ b/man7/utf-8.7
@@ -33,8 +33,7 @@ does not have these problems and is the common way in whi=
ch
 Unicode is used on UNIX-style operating systems.
 .SS Properties
 The UTF-8 encoding has the following nice properties:
-.TP 0.2i
-*
+.IP * 0.2i
 UCS
 characters 0x00000000 to 0x0000007f (the classic US-ASCII
 characters) are encoded simply as bytes 0x00 to 0x7f (ASCII
@@ -44,23 +43,18 @@ This means that files and strings which contain only
 ASCII
 and
 UTF-8 .
-.TP
-*
+.IP *
 All UCS characters greater than 0x7f are encoded as a multibyte sequence
 consisting only of bytes in the range 0x80 to 0xfd, so no ASCII
 byte can appear as part of another character and there are no
 problems with, for example,  \[aq]\e0\[aq] or \[aq]/\[aq].
-.TP
-*
+.IP *
 The lexicographic sorting order of UCS-4 strings is preserved.
-.TP
-*
+.IP *
 All possible 2\[ha]31 UCS codes can be encoded using UTF-8.
-.TP
-*
+.IP *
 The bytes 0xc0, 0xc1, 0xfe, and 0xff are never used in the UTF-8 encoding.
-.TP
-*
+.IP *
 The first byte of a multibyte sequence which represents a single non-ASCII
 UCS character is always in the range 0xc2 to 0xfd and indicates how long
 this multibyte sequence is.
@@ -68,8 +62,7 @@ All further bytes in a multibyte sequence
 are in the range 0x80 to 0xbf.
 This allows easy resynchronization and
 makes the encoding stateless and robust against missing bytes.
-.TP
-*
+.IP *
 UTF-8 encoded UCS characters may be up to six bytes long, however the
 Unicode standard specifies no characters above 0x10ffff, so Unicode charac=
ters
 can be only up to four bytes long in
--=20
2.30.2


--x3dliwla5bblnart
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPlNwwACgkQ0Z6cfXEm
bc7ieA/8Df0WSqk9zIzA20tPKSqQCU+Zidishs4eFkIQDBMu7lrCUa2yB33hfB4d
VOvASYm8LyP+cj0CgNKbPBfrcXsa31HW34MP0KW6YEn0CLJV0U4Ps+0cpc42iSuN
pXkhV5Sa1OrGRbOfSDk3hStb7qLVDHTjamotE6g2vCTut5y5NznVecANN/Ri1JyH
d4sHZdAJbAESNTWc58cIUz7f+7jUz3h2CxcvOlOrPwso99tEVQumv8DumC6CNsgh
Wb0q2E88yPc6HNcbfk7yZdGi3Vlaz5C0b4IA8WPKITNoe5ff/DXD3/hXlHlaZqB4
fPey6FSQIhE4C1xGQGtTOc2rUxN7mTLmf+Ea55+hs/muenCw+XlG5B76jyx8K+bL
l0mZikA+fah0HihvF0Z3d7s/h3aDq9CPkIwCioE2UgC8uJuSvEe3Y8wWV1SNPIcD
5lH3yv6KeVJ2U0qNzm/Xo5xCWXyC886jUQnyhu/cua16ZrV4rLnWdfcQMrNdAQsc
/ixKtsmMeHOPUjxn3ClrvP4Ijd08q9QYNzAG5TzrzK7jEavHwmxO0+kCLOKk+P+K
zWAHk72np5JBoi8PFbknddmB7QfVZwhanV/gNiRYlyy525U+/XSIpnS6hxVwzX3n
zHkOgJJIu+oNX8BkXFRwxbdgsof4Z3S6vnltJYqRX0UwJfkCzxw=
=gni2
-----END PGP SIGNATURE-----

--x3dliwla5bblnart--
