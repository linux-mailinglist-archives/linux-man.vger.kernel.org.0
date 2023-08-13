Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1241177AE22
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 00:07:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229957AbjHMWHM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 18:07:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229799AbjHMWHL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 18:07:11 -0400
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E7FD18C
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 15:07:10 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-6bcb15aa074so2395041a34.0
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 15:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691964429; x=1692569229;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4+lK+U6tKpO74zGqRTF66Q/nI2oexExnlmjbaQaInlU=;
        b=I9ZtReYZdjyOft2Yi4AeYK0LS/8bzVW1M1Z4K7x6Vu0SG2ozsJNp01cfqvItXMqeGs
         tFPVs6smMZSnIcYjpImXV0jissPLvX3lPB4QvJv6GUKDKjuLu1Kt+oio1zBFqm2sVed/
         5cKIFnn5WULLbrCU1sFEmR3N3RmnoFVeWgSnOBCZ84VXShb56k67SbFIbNw/qQB4pw2w
         vwEwnZWurCeUWLA4K7OmmWodML8s7ieQndU87vcUXvAup31wUFSuWu9cQdx6MZL80ljY
         QZqof6mEuC17deWq0HAAaVrW+QRqqmp2f4tDlYXpP8WBW+ko+Hpn2RI6gzttpxbeQn0T
         3Qtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691964429; x=1692569229;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4+lK+U6tKpO74zGqRTF66Q/nI2oexExnlmjbaQaInlU=;
        b=Tkphv7ps8+zmu21C2Ybjjt4/EN/cVkc7HH/x2lJhzsavsFBY+9+vslHEtEyMUqO/pZ
         UU1w9PFzLshBVpV1GcQDhxdga8HqAc1E3Q8S2rWtV0N9jWwNWS8nkfk/kzzvXfqi9p/D
         1AIkRJAQPEHV3WaHxlnWcsZ2ZB+lqoF0EJpSeNtiVGo2hMZXgwJnT+T/hsvEZuw1RFL8
         aY6hyX7TioFhnQybVMGIip2Okq5iRZp/3AjUvRl2y0xd2FysqT3EuGMyDLvQTniUjxdd
         ysHS79vBOzpvOmUvW3+C0GDaKfeMVkJG9Fmx33rAXhf1dcEDCPynAZUzOyMOUN79yLtr
         YWpg==
X-Gm-Message-State: AOJu0YyjhMo4byjUS8I6k1XPwnUNQO1oC69YrNu0cpIIfc4gmzjIxPK7
        WSwoyGjhHOleVRdtarLZTFY=
X-Google-Smtp-Source: AGHT+IEmjxcK5jDvbbABhBRI8h+OKZ6AQo9en5kilOyFc1C/ps/DmqxWzVIe9qIKJDcfR4AigQFXQg==
X-Received: by 2002:a05:6830:3487:b0:6ba:864e:c5de with SMTP id c7-20020a056830348700b006ba864ec5demr6159450otu.8.1691964429497;
        Sun, 13 Aug 2023 15:07:09 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id s13-20020a9d758d000000b006b753685cc5sm3724046otk.79.2023.08.13.15.07.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Aug 2023 15:07:09 -0700 (PDT)
Date:   Sun, 13 Aug 2023 17:07:07 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Brian Inglis <Brian.Inglis@Shaw.ca>
Cc:     Linux Man-Pages <linux-man@vger.kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: [PATCH] man-pages-posix-2017/man1p/dd.1p: added missing
 ASCII-EBCDIC tables
Message-ID: <20230813220707.vis3pmy57fj4bfew@illithid>
References: <084cb8c0074b11327c68fb60b9c5c6238eed7df1.1691960082.git.Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="sfdv2oln32kivjzl"
Content-Disposition: inline
In-Reply-To: <084cb8c0074b11327c68fb60b9c5c6238eed7df1.1691960082.git.Brian.Inglis@Shaw.ca>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--sfdv2oln32kivjzl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Brian,

At 2023-08-13T15:01:44-0600, Brian Inglis wrote:
> I have an OpenGroup/UNIX.org/Austin Group/POSIX account, so added the
> missing ASCII-EBCDIC tables by copying from the POSIX PDF, as copying
> data is fair use, and the man page copy itself is authorized.
>=20
> As an aside to that, those ASCII-EBCDIC tables support characters from
> the old ISO 2033:1983 MICR/OCR character sets now in Unicode OCR block
> U+2440-U+245F, which appears only in a few fonts like Unifont and SIL
> LastResort (and MS Segoe UI Symbol), and are still available as TTF
> (some font formats and support are being dropped in favour of OTF).
>=20
> They appear normal on my screen running 'man 1p dd' on my system which
> has those fallback fonts installed.
>=20
> Is it sufficient to run the groff addition install-font.sh script on
> those fonts and add them to the config as .special, or is anything
> else required to register and render the glyphs on other devices?

That sounds correct to me.

> Or should I take this up on the groff list?

See if the gropdf(1) and/or grops(1) pages in groff 1.23.0 get the
essential information across; if either one doesn't (independently of
the other), please report a bug against groff.

> +.sp

Just use a paragraphing macro call here, like `.P`.

> +.TS
> +centre;
> +l   cB sB cB sB cB sB cB sB cB sB cB sB cB sB cB sB
> +l    _ _   _ _   _ _   _ _   _ _   _ _   _ _   _ _
> +nB | n l | n l | n l | n l | n l | n l | n l | n l |
> +.
> +\&	0	1	2	3	4	5	6	7
> +\&
> +0000	0000	NUL	0001	SOH	0002	STX	0003	ETX	0067	EOT	0055	ENQ	0056	ACK	0057=
	BEL
[...]

I guess it's hard to change the tab character for this ultra-wide table
since every printable ASCII character is represented in it, and tbl
affords no mechanism to escape the tab character.

> +.TE
> +.IP
> +.SB Note:

There's no reason to use `SB` (a SunOS extension) anymore since groff
1.22.4 (2018) and mandoc 1.14.2 (2017).

=2EIP
=2ESM
=2EB Note:

will work fine.

Regards,
Branden

--sfdv2oln32kivjzl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTZVAMACgkQ0Z6cfXEm
bc4EchAAqDHWWeYHU3NH4W1tpqGx+A6C843Ib30ZdtT3MMRtkNThgBg6qam1BEDa
yGT8dBA4jP9ZUWpyiX339xZMdizj6F+UEnxr+fI6psqtX/5RPKVySOiqBEuMViLm
hGFvB3hXn6w5JU4TNo5h324OwVqmWrxdZEgEF/dF1yG153d4NSrZ1nvNkOyQtuuX
6NufkVW/HLTxvJYwhKt3W29PKoBtEDhXbMCOpc7/2nd9TR7ZpBaheLtHunQQ1CjR
gDQmSMYDocONBvxZxc3/NwDUgt+8G1yB1MsHs92JDBTwP26PHVRZmBjH+cHKjB2N
uOde5IyEpNqEkEBcRcSdoF3iLajWNa2CLuqgwEMhOGbzza4TYU0aCZhZU5L9H9GJ
wTYGlourCE9aLYD0/Cag9jnXR9Fzqf2FeyocsaZvZ693LVifq2nzI3xPxvsvU9qK
/LWSimgNylf3fyQGvhNRDFda0KHjPkt+zajDhLYuC+QxR7UCh3YmnkFLufTXFcKD
8gYFTZzRPlJ/5xwBE07fkl7oMuHiu9V1gEradicqRO3h9y2636sGCRhxlk/Dnl1N
AJuJ1/esC8SvAtcWg6/QKd/FTLpJnFgkyVjijGUNgXKez9rId9+kMRKacgku9sbg
M4qCYiVJ+tWZi+1TOoLamToS/hQulc6+UI5TFpXvYgGDE+ozpeU=
=Gd9J
-----END PGP SIGNATURE-----

--sfdv2oln32kivjzl--
