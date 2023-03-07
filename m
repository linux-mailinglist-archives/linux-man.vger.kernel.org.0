Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0F2F6AFAC8
	for <lists+linux-man@lfdr.de>; Wed,  8 Mar 2023 00:54:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229768AbjCGXyj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Mar 2023 18:54:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229497AbjCGXyi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Mar 2023 18:54:38 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E45FA3B7A
        for <linux-man@vger.kernel.org>; Tue,  7 Mar 2023 15:54:36 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id r18so13808404wrx.1
        for <linux-man@vger.kernel.org>; Tue, 07 Mar 2023 15:54:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678233275;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=WlB6LfkIl+TRU4IlmU2+Pl+70twq+PppccEE09goppo=;
        b=WGUoh1ZTFfG3OTFyFu2ytlpO1f1TaKVFz3NgxnGWnhFieDEufQ3oO0RuEx3ZzsfLfo
         mbGneOHKxK6iTZaUhFbTzV3Vz9xfts7yOqRXXLpGTlO6vxsf8PRkEvg/faZj4AZYLRIX
         WivkO5J2zeFtni3opTYWc1tFqH8qMIZcsNCh1zfONW46OvkeRO91FA0/zPJ44i3RBVj3
         ZmbTKcx+Z28BK8rKvdhlIoaRwuLLZjU3LZUGabdpglFxfG+oGbh5YYUrm8r/xU7M4Nwt
         3WCHuCbua//7fiN/MZNHD9d8y6irhbFSqpLFW3j+NZr91CMoDnpuNnakmLGji4yntaSi
         4Mgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678233275;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WlB6LfkIl+TRU4IlmU2+Pl+70twq+PppccEE09goppo=;
        b=q57SZtVZg2kzBVAwF8u74CUTKWPnYJ7vHQXGQ42Fn0imcsMmjUJ3tMhjbaBFGzo9XH
         XyGjWHintzPTeb8i3rlzug//+dCfqzWgAcbzD7GG0EgY2lQstSGG5ILH6wRDNjWyXHFL
         3wclgndl23vXDwX1LVD/A2Eii4DnFSuWpm3M99eQHHOY2/zM69jFtDM5SQY8JyqKlXoS
         5bh9RMp0M/SOPcvfBbVSbcR/wRSilP3PnxlV6b4v1kldKOJ9BLsvFUnARHb/OGB85XLU
         zAzJIXUAKIHLt6KN2ZrZJFtSeHFqHbgjSr+7O+BMk+efct0g3Ew+SKorF5uLAAzQJ1yu
         qQkg==
X-Gm-Message-State: AO0yUKV9q9kw/cOo1Q8cnTy+L6AIf1gsgialXuhAXb/3LziluUXimnNf
        8IVJzXr7Lv0xWa+FrDo4UkN9FRSvyMU=
X-Google-Smtp-Source: AK7set+pJbXIr4zomJddCBqCGRXwee4/R58NT5wQCb/F+mHQ0R80Hq6zuHV61YN67iPx7lfyryT4GQ==
X-Received: by 2002:adf:e506:0:b0:2ce:3d6c:9a03 with SMTP id j6-20020adfe506000000b002ce3d6c9a03mr9474543wrm.19.1678233274824;
        Tue, 07 Mar 2023 15:54:34 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id q9-20020a5d61c9000000b002c54911f50bsm13769974wrv.84.2023.03.07.15.54.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Mar 2023 15:54:34 -0800 (PST)
Message-ID: <884cb5d0-27ce-a5ca-b449-972021e62e92@gmail.com>
Date:   Wed, 8 Mar 2023 00:54:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Paul Eggert <eggert@cs.ucla.edu>
Cc:     linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: mandoc(1) warning in tzfile(5) regarding //
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------fmMXKAXGrBF3aB0B9eU0hoGh"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------fmMXKAXGrBF3aB0B9eU0hoGh
Content-Type: multipart/mixed; boundary="------------DbNirlB6Y61QA0rkKW2hQdNb";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
Message-ID: <884cb5d0-27ce-a5ca-b449-972021e62e92@gmail.com>
Subject: mandoc(1) warning in tzfile(5) regarding //

--------------DbNirlB6Y61QA0rkKW2hQdNb
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Paul, Branden,

I don't remember if we covered this bit in the discussions we had
a few months ago.  I'm seeing a couple of warnings from mandoc(1)
in tzfile(5):


$ make lint-man-mandoc V=3D1
LINT (mandoc)	tmp/lint/man5/tzfile.5.lint-man.mandoc.touch
! (mandoc -man -Tlint  man5/tzfile.5 2>&1 \
   | grep -v 'STYLE: lower case character in document title:' \
   | grep -v 'UNSUPP: ignoring macro in table:' \
   | grep -v 'WARNING: cannot parse date, using it verbatim: TH (date)' \=

   | grep -v 'WARNING: empty block: UR' \
   ||:; \
) \
| grep '.' >&2
mandoc: man5/tzfile.5:15:19: WARNING: undefined escape, printing literall=
y: \\
mandoc: man5/tzfile.5:15:10: WARNING: undefined escape, printing literall=
y: \\
make: *** [lib/lint-man.mk:88: tmp/lint/man5/tzfile.5.lint-man.mandoc.tou=
ch] Error 1


The source is:

$ head man5/tzfile.5 -n20
=2E\" %%%LICENSE_START(PUBLIC_DOMAIN)
=2E\" This file is in the public domain, so clarified as of
=2E\" 1996-06-05 by Arthur David Olson <arthur_david_olson@nih.gov>.
=2E\" %%%LICENSE_END
=2E\"
=2ETH tzfile 5 2022-09-09 Linux "Linux Programmer's Manual"
=2ESH NAME
tzfile \- timezone information
=2ESH DESCRIPTION
=2Eie '\[lq]'' .ds lq \&"\"
=2Eel .ds lq \[lq]\"
=2Eie '\[rq]'' .ds rq \&"\"
=2Eel .ds rq \[rq]\"
=2Ede q
\\$3\*(lq\\$1\*(rq\\$2
=2E.
=2Eie \n(.g .ds - \f(CW-\fP
=2Eel ds - \-
The timezone information files used by
=2EBR tzset (3)


Is this a limitation in mandoc(1)?  Should we change the source code?

Cheers,

Alex



--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------DbNirlB6Y61QA0rkKW2hQdNb--

--------------fmMXKAXGrBF3aB0B9eU0hoGh
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQHzrEACgkQnowa+77/
2zLbcw//fSj7a2PKVNiEB1caxKHWTTo9tHDtcapgsOUJQi8S7UzwVCN+eGlAq2Q8
8FkEVJwF41h9KWDcBvgoNTCC2rAPw7otOHI9CRIfSSzpGHB0u2HxTKUV2emDiV0o
5LV2keFlr2PzI0EmK+x2NTMvB40FXKTllBWBCyQqXbwnVcxf41/VODo7rBrOxZ3h
99DGj/vCZkfZuUg4naIM+meNJb4iETEaFGNrcp6SLCEmLA3Ak6s2wxgFJM+dJfjo
Xki7D5HeyoaQZeZlGmfI9xn5a9ADd/3DrZmp4i4AIUP2CEJ4qsiUF6d0CTszy7+F
GAhdsToWM/yJ8HP3z95S34z0UmPHDuduYRcFp8zq8fnZx1VQvZboLr9BCYfgGgb/
bafoDOF0vxIQdjI7IIMmmWyxxGIx2SV31flNiSKJnRsl04Gv2/q2NOuou7My+HGD
FYpxPITdQBqoq6JSkBh5gvHxp5UkoLCzxSGnMv3vgWgbrviE0Hk9sgQht39zSHRT
SBELp2cWbxEK0kXPrsLDBC8y9+r/17xgdIjKIMTJN54g6vrrzLkBYAn2fBiMGnCl
l9jt3S3IeSMJDSBOAYLQ7zgD3vB6U9HKsoqL95ZMh882EzRSKu9/lKokP6uIVAcg
HmKZ2dw0G6W94FTBGrx/DiaGuvQ6xhUmYUJVrIZFZCaZAAsTrJ0=
=8/i5
-----END PGP SIGNATURE-----

--------------fmMXKAXGrBF3aB0B9eU0hoGh--
