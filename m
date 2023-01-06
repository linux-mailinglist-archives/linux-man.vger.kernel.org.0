Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2FC865F80A
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 01:17:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232288AbjAFARY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 19:17:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236068AbjAFARX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 19:17:23 -0500
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 921BA3D5CB
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 16:17:22 -0800 (PST)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-14ffd3c5b15so246831fac.3
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 16:17:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7BOQHUgalUjqzwjo4oPkhNDHE4K5lTcIiBoLICQvWdM=;
        b=d71D0gfeSY8QvLHfk14hXgWpFfg1/CxosU2Q8rc6puneruQfldV07UiLZHpgdO29G+
         GSRxjXhPjLNzHIuPVmxB68Wi6b+Z0oey0DrZ5kzxKGBdCzlm2Vjbp6mgDDQJJFGQZk1h
         8qiJ+tcvA0FFnMAJTJCX5AV3eq5zsFgXDi+wnZ7Y3naA2Rw/71I5lpVCCzibFiohYLyp
         L8aVTcOlp3Xejrvg8a9X5KSCfPHGfjsExtjEkrFmvgDkak1TyuBWcfhW2q4FpQ6vtzyj
         CplAD9cAszrW+c8zkRVNfy0nMEE5GQF9F1iwBFjlMJHkzy8qUTmARrSnZ+74am0CjLqe
         qP7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7BOQHUgalUjqzwjo4oPkhNDHE4K5lTcIiBoLICQvWdM=;
        b=I/TZeOukuaXvsw02csFRwhX/tCdWfhh7lOIEx/T+Nz/NAC66bFFfkAc9X5VTcIciv2
         htvEm3XCSXWWCDoX+0oBxAnYeNZ8SbTzvW4UheXnuD6+Lh5j0BEFBBzqX+GTw8qcRxz4
         MJZXVkdMFGFOJjljqsoOn2SntaorxzDyKvwrznDGuLEgovGc7VgfjK3DfkDiszlcHpVW
         BL/FFpbwVc4sH+z+ijj0j78w12pnmfywfsEagi3NlXT4rKzSrT2T6PfMxv7WapP+dE+9
         f+tkWUl3eAJ2nGA0Yi6MRfVSOfODDzvlU89wy5XeJ9NKRkPGtsVoU3O0hGyLQisqcyH/
         5Dfw==
X-Gm-Message-State: AFqh2kqQGUw3vhjnqYTRB+HzmH3OE7ynK53qYjoK8hACqwpzejjFQI5L
        lwRt9ccJDrGv1aNAvhgGO6CErTlhuNo=
X-Google-Smtp-Source: AMrXdXvswxOzo9XgCJfP7MI7wZAbU626SJamQcENvbEOrI/ct5j6kS2zORuVXpWjY8yktfNRzMQ4OA==
X-Received: by 2002:a05:6870:7d01:b0:151:327f:3da6 with SMTP id os1-20020a0568707d0100b00151327f3da6mr3189376oab.58.1672964241468;
        Thu, 05 Jan 2023 16:17:21 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id o13-20020a056870968d00b0014f81d27ce3sm17259564oaq.55.2023.01.05.16.17.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 16:17:20 -0800 (PST)
Date:   Thu, 5 Jan 2023 18:17:19 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v3 07/13] libc.7: ffix
Message-ID: <20230106001719.imokpcfcqbuuuxka@illithid>
References: <20230105225303.bpo7ot4zcsthw2gv@illithid>
 <7aa64afd-86ea-fa04-9e97-98b60ff8b264@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="366arawetolwk525"
Content-Disposition: inline
In-Reply-To: <7aa64afd-86ea-fa04-9e97-98b60ff8b264@gmail.com>
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--366arawetolwk525
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-06T00:53:11+0100, Alejandro Colomar wrote:
> On 1/5/23 23:53, G. Branden Robinson wrote:
> > * Set page topic in lowercase.
> > * Use typographer's quotation marks instead of '"' for quotation.
>=20
> Isn't it equivalent in running text?  '"' is simpler to type.

No, it's not equivalent anywhere except on the "ascii", "latin1", and
"cp1047" output devices.

$ groff -man -Tpdf <<EOF > quote.pdf
=2ETH foo 1 2023-01-05 "groff test suite"
=2ESH Name
foo \- "frobnicate" a \(lqbar\(rq
EOF
$ evince quote.pdf

It _is_ simpler to type just ", and many other man page authors seem to
have found it so.  That is why I have proposed a `Q` quotation macro,
because without it, man page authors seem to forego quotation entirely
in favor of italics, bold, or nothing.

https://lists.gnu.org/archive/html/groff/2022-12/msg00078.html

Historically, TeX-style quotation ``like this'' has been seen in *roff
documents, but the practice is almost nonexistent in the Linux man-pages
corpus.

``This'' is so ugly on ISO 8859 and later character set-based terminals
that I don't wonder why people avoid it.

https://www.open-std.org/JTC1/SC2/WG3/docs/n411.pdf

=2E..is a copy of part 1 of ECMA-94, the gratis equivalent of ISO 8859,
and shows what the ' and ` glyphs are supposed to look like.

Regards,
Branden

--366arawetolwk525
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO3aI8ACgkQ0Z6cfXEm
bc4j4g/+LvsxPsUsWx1zkGlVS0zkyjG9xG0tYY9fYy/A+HcIiqd+wegGwtKg8BNp
catIp9uSGmbJWscXu1kPoQZXYr60mNGPUaUUo+8Dk6cMTclCJy6tnGHc/EqpF1ng
04K5L3TC64tJyfFduD6gn8H3vNJrs9r3KJXl8Ms9M8qHgI3ktQUERAaJ4QoqRNJw
TGKyQ3Kl6B7QUlsWZC34Om9Wh1FAeZLG7rA70Gs4AqKu1aqtnnyfqe1pNkLhPWS5
h2PgtJE9iQAsUoIEIpAgITOTb7LUpNu4+Cb6p/5Y6F2okDbUvyYNz7Z0/DJli9+w
qFOmONfYQnuRXDlgEQ3BTv2TbKCpOoOVMkyFa3uzYzzfxRSalXyKCMs39bzB9U/W
qS767LxKJQKh9psp5sf87cb3KPqMqA0eFKzFBAEs2GcwgtTBqBLt1fecN5ubwPUG
YeyrdIz+sdXUknapEI0Gyn05OMzi5xdKZ+TidC2gMtu+B2qiv/jgn2gGQcyM+jRD
1PnuFCrp6Y4nQCVzEfUt1cmt+Ny+45yBA5MoChrZ/sW0MaWiexYp0aNM/owXzDIq
N5dfXuNK+yG6zlhBGbL3X15Hk8Gv7KoAS6Ci+X/CJdSep7iiSEeZ72HhN/c6l++R
2qWQ6IFJdbfJv4shug6uwvkbv90QklCBTnILTZlU/w8gsM2y8ok=
=PL8X
-----END PGP SIGNATURE-----

--366arawetolwk525--
