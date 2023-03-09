Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37E706B2AAA
	for <lists+linux-man@lfdr.de>; Thu,  9 Mar 2023 17:26:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229809AbjCIQZ5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Mar 2023 11:25:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229823AbjCIQZh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Mar 2023 11:25:37 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39012FCF01
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 08:17:06 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id r18so2441319wrx.1
        for <linux-man@vger.kernel.org>; Thu, 09 Mar 2023 08:17:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678378554;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=w0jm8xCFYEMoIe4fIfArS88lOI9b7IbWdP9KSp6F/AQ=;
        b=GQ/QhSnnX/YWHiYMubLd+qsMPvac02DusFXhlKnc6myO8a3vM4XKMi2aumINr4ff9H
         Ofl2bV9NSWAB+4pLVWd6eke7LLFZyMjv4DdSS3YwCgtixTE31nXIDulxbirz7be0gIKZ
         3P99RpLiyxiirT3auDH/ocvbTkmeue4L7tNjuhm7umslzHJ1tmimVRY76lvt+you1Im/
         mWYG8G5BhPhN6UdjPCWbSm5fbwVCiwUJd50NBaAd5+DhYf0kJpo1c6vdTOwAM+kDbmVN
         idMN+eP+ENXI6t1Kw1tlJ5tzTrngQaT9UQJOgXg0YIW1FQhuTdv3kuChQl+gyt/+D9DJ
         y/Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678378554;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w0jm8xCFYEMoIe4fIfArS88lOI9b7IbWdP9KSp6F/AQ=;
        b=cbzDk1jOF10SLiCIkPYw66vTMcqybljDd6s/XfrqWBXIGKcGEZwEoPZc2+Z0i+B5Ju
         dLfh2Hy143bd6BH1M4xZUB0cFCa3cgwmmME3ygnPP5HXEU0h1ryLyjO7HNqsucHOhVGB
         cqNdEKukGeTN9RUJCEuR7q9HRLGpVPz1IMhrLnbSKGnxAJ28Iy68ZqDfAb9PxOrsOJZJ
         VQMUf8IZy7TVBd1iN23w9vJDb3Jrn+OsMYM9A3LCDGwZDiJr+cLuAHJfbctRzqPDruVt
         rRQDm5YOUt1li0zmEiyqjK8sOk9slWTE6+Tbn5hT06kAsiLSlTz7xy/OA0V1Dn7Byhnq
         ag/w==
X-Gm-Message-State: AO0yUKV04oT+x9Uhri5vYfDs/PG3XvDHtJ4XdqeTfrfmkVE24owjx4A5
        /GB1Q8A483JdFz5FZHg2Duoe54Qx8So=
X-Google-Smtp-Source: AK7set/GJK4eYtZ0w3OafVQmysL7CPmCNUotRy4vOI6lt2Vdvviq/Zn+N88Hgqi2aUI0AVgPebnHZQ==
X-Received: by 2002:a5d:4c52:0:b0:2c9:5675:7def with SMTP id n18-20020a5d4c52000000b002c956757defmr14391553wrt.2.1678378553931;
        Thu, 09 Mar 2023 08:15:53 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id u16-20020a5d5150000000b002c559843748sm18366018wrt.10.2023.03.09.08.15.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Mar 2023 08:15:53 -0800 (PST)
Message-ID: <da8d74fb-8ace-c6ca-ae10-4af4d3d4a48f@gmail.com>
Date:   Thu, 9 Mar 2023 17:15:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: mandoc(1) warning in zic.8: tab in filled text
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------L0vuRUtZkquV19eF8rWR2wmk"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------L0vuRUtZkquV19eF8rWR2wmk
Content-Type: multipart/mixed; boundary="------------JRYgh4dI4lCsKxJ7n5pSeybh";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
Message-ID: <da8d74fb-8ace-c6ca-ae10-4af4d3d4a48f@gmail.com>
Subject: mandoc(1) warning in zic.8: tab in filled text

--------------JRYgh4dI4lCsKxJ7n5pSeybh
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Paul,

I silenced two of the warnings mandoc(1) was throwing in tzdb pages:


commit 349832ffe8147a004d7ec1d565e47a806c5c8bd7 (HEAD -> main)
Author: Alejandro Colomar <alx@kernel.org>
Date:   Thu Mar 9 17:04:05 2023 +0100

    lint-man.mk: lint-man-mandoc: Silence warnings about '\\'
   =20
    There are false positives in tzdb pages.
   =20
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/lib/lint-man.mk b/lib/lint-man.mk
index 6a0cd4184..e0f72d303 100644
--- a/lib/lint-man.mk
+++ b/lib/lint-man.mk
@@ -91,6 +91,7 @@ $(_LINT_man_mandoc): $(_LINTDIR)/%.lint-man.mandoc.touc=
h: $(MANDIR)/% | $$(@D)/.
           | $(GREP) -v 'WARNING: cannot parse date, using it verbatim: T=
H (date)' \
           | $(GREP) -v 'WARNING: empty block: UR' \
           | $(GREP) -v 'WARNING: missing date, using "": TH' \
+          | $(GREP) -v 'WARNING: undefined escape, printing literally: \=
\\\' \
           ||:; \
        ) \
        | $(GREP) '.' >&2

commit e73e78f59ac4c4bccbde512230f0dfca96e8aebb
Author: Alejandro Colomar <alx@kernel.org>
Date:   Thu Mar 9 16:59:50 2023 +0100

    lint-man.mk: lint-man-mandoc: Silence warnings about missing date
   =20
    tzdb pages have no date it them.  Don't warn about that.
   =20
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/lib/lint-man.mk b/lib/lint-man.mk
index 8e66291cc..6a0cd4184 100644
--- a/lib/lint-man.mk
+++ b/lib/lint-man.mk
@@ -90,6 +90,7 @@ $(_LINT_man_mandoc): $(_LINTDIR)/%.lint-man.mandoc.touc=
h: $(MANDIR)/% | $$(@D)/.
           | $(GREP) -v 'UNSUPP: ignoring macro in table:' \
           | $(GREP) -v 'WARNING: cannot parse date, using it verbatim: T=
H (date)' \
           | $(GREP) -v 'WARNING: empty block: UR' \
+          | $(GREP) -v 'WARNING: missing date, using "": TH' \
           ||:; \
        ) \
        | $(GREP) '.' >&2


------


Now I've got a last warning from tzdb pages, that I didn't yet silence,
since it seems to make sense, I think.  Here it is:

$ make tmp/lint/man8/zic.8.lint-man.mandoc.touch V=3D1
LINT (mandoc)	tmp/lint/man8/zic.8.lint-man.mandoc.touch
! (mandoc -man -Tlint  man8/zic.8 2>&1 \
   | grep -v 'STYLE: lower case character in document title:' \
   | grep -v 'UNSUPP: ignoring macro in table:' \
   | grep -v 'WARNING: cannot parse date, using it verbatim: TH (date)' \=

   | grep -v 'WARNING: empty block: UR' \
   | grep -v 'WARNING: missing date, using "": TH' \
   | grep -v 'WARNING: undefined escape, printing literally: \\\\' \
   ||:; \
) \
| grep '.' >&2
mandoc: man8/zic.8:100:5: WARNING: tab in filled text
mandoc: man8/zic.8:100:20: WARNING: tab in filled text
mandoc: man8/zic.8:100:21: WARNING: tab in filled text
mandoc: man8/zic.8:122:5: WARNING: tab in filled text
mandoc: man8/zic.8:122:20: WARNING: tab in filled text
mandoc: man8/zic.8:122:21: WARNING: tab in filled text
make: *** [lib/lint-man.mk:88: tmp/lint/man8/zic.8.lint-man.mandoc.touch]=
 Error 1


What should we do with this warning?

This seems somewhat related to <https://lists.gnu.org/archive/html/groff/=
2022-08/msg00012.html>.

Cheers,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------JRYgh4dI4lCsKxJ7n5pSeybh--

--------------L0vuRUtZkquV19eF8rWR2wmk
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQKBjEACgkQnowa+77/
2zIcpxAAj+uFRZ/qLiDxH1vc+g8AfYAEHDTYjtDMhTersOq4JSS9FctR3DaakHqM
xoJbDoVUYXsJkDwUmJafD6ufTvgXTpv3joOw2j/fEgcIXa+QOAcVYf0mFiQwvsPH
ZEX2BpD6zxLyqLIDiD5grHDbmxQMqJTeDxYEmfITpTPzl9dzcVKQ4rrrTADbmX0S
XzRcJ1tztR7//ejN4jSgkNMYfiHzwr5ewKh4RUAvcHActb+3eZZWNyhOsBj+XK41
EIRYi6yvIImD0suK9FVx+nfq3SLPJs3DHaznEeeS1OSRk07eFZJUjhJE244XAF4y
A1TljtwoqXBBoYeMk4B0xvHUX2sQoG4JNuqYB2ydoC5eMpd8KEhX8t23jp4KIhgu
QRy/YDapWojpMMbB+r9vHFW0uuZ+ir4LoXqLr8IvDazMEYlktksxfwea3XpslRhF
YMNsvnLg8EV7HZaVGtpSyma1lbr0yMyDKccikfoHbu1paHF9++3zg8OxEE3KMCsd
V5Dq5VwnG1NibT6jAdIGaKAIfkUc3TuZ+gTfAuHtN/gwpiTa5kERIkol8E4hout2
YRVc0X/UR7bBOnhQ4/l1aMX4L1eRxa0UnMBRjcyNT+iUNBdPjTPjYJSn729ZK5Nx
VQYad2nbzZuCvDpkjYxsRhDxfmKc7gs0NfSTC93Wblfui4Rd6mE=
=pP0I
-----END PGP SIGNATURE-----

--------------L0vuRUtZkquV19eF8rWR2wmk--
