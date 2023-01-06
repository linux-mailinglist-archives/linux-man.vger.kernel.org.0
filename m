Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 708EB65FBE1
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 08:24:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229490AbjAFHYJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Jan 2023 02:24:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbjAFHYI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Jan 2023 02:24:08 -0500
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73CAB6D51E
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 23:24:07 -0800 (PST)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-14455716674so879334fac.7
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 23:24:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8FT8eZeWKle7FbjxItYC5cAYe1ha5sH2ZIQb0zzAMXs=;
        b=AeEvsUf+rmLBIVoTHMGTtGGMFizxJYfOJTAXAkWWEl6opWYIykg+c9s7wZvLC05WkQ
         TBpLJDDRrSyrpz4D9+iKFKWMB7Ix+bCjj29Fo87AMrNR59DHh4rWG0B05CgjbSlwq2wb
         XnEMwnYsY9ybaYHtadWFNY2gvsV4BjPiuC+2ERzseLigrVF1MDpnQGdhLbhj4ezqrpLO
         v14nvB0lMtp87GBOgFDcCRoFKxq046n9BWx3Vw7h0xzPDI3l0lkqfE30/VhSOM8c4jHv
         RXH7WotYPLGGcN0EVyScKnG997NfvegOERIepB7b2gfHIcGp1963scqM+w/GedWdrDgf
         /zgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8FT8eZeWKle7FbjxItYC5cAYe1ha5sH2ZIQb0zzAMXs=;
        b=EFo2Ua6nD+R8ZwZYjzPEtHsEH13+S8X7stSg4BjaDxgGX+plVVGwI9UDnx9w24V8Ib
         sHlY9F5lBgsri80YcCSZMC4nwajRaYeINds+7UhXSKkTOJD3YBnpHl56rWHqhyP6Dhqi
         IpcF++t4clLfktPWq7q3ZB67e6wl2/1H4FJq5WmzsE60EgCjUUO4ZkQzTUxh2zHJre1Q
         J86IdNUK8nzUHLRPOdyV916gwZh+p9Uzrmi2M+L+/pVI4KLc2ZHMp822j2zQpdiDr9gi
         a6iZYzriaU4YwDYNyxiBiQxPbpNIDP0pNKWqdXxF6okU4ioPThdoXwV2AKVD4hx5mXHU
         BEZg==
X-Gm-Message-State: AFqh2kqJ8QcXS62HY0H82fIZGBfNfZpkBI/7MHEWAoN3JPHpgYQLCJx6
        abVQNm6XtVBKzG5R/A3PvOlxzCOHWRk=
X-Google-Smtp-Source: AMrXdXu9HZV4m/vK4jicQOeMcLOip5ucSXSR5ob439iElUtuJpM46J9A++Od5quxT8pOyOB/qkLnAg==
X-Received: by 2002:a05:6870:5b93:b0:14e:9c17:181e with SMTP id em19-20020a0568705b9300b0014e9c17181emr22443942oab.18.1672989846847;
        Thu, 05 Jan 2023 23:24:06 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id z23-20020a4ad597000000b004b0037cebc4sm172689oos.9.2023.01.05.23.24.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 23:24:06 -0800 (PST)
Date:   Fri, 6 Jan 2023 01:24:05 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: How Groupe Bull screwed French with ISO 8859-1 (was: [PATCH v3
 07/13] libc.7: ffix)
Message-ID: <20230106072405.ozagbixtxujtvbu2@illithid>
References: <20230105225303.bpo7ot4zcsthw2gv@illithid>
 <7aa64afd-86ea-fa04-9e97-98b60ff8b264@gmail.com>
 <20230106001719.imokpcfcqbuuuxka@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="kqzy6y5dml6deiaa"
Content-Disposition: inline
In-Reply-To: <20230106001719.imokpcfcqbuuuxka@illithid>
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


--kqzy6y5dml6deiaa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[This is a resend without the attachment, which kernel.org rejected.]

Hi Alex,

I've been meaning to share this story with more people since to figure
it out I had to resort to literature in a language I don't read.

At 2023-01-05T18:17:21-0600, G. Branden Robinson wrote:
> ``This'' is so ugly on ISO 8859 and later character set-based
> terminals that I don't wonder why people avoid it.
>=20
> https://www.open-std.org/JTC1/SC2/WG3/docs/n411.pdf
>=20
> ...is a copy of part 1 of ECMA-94, the gratis equivalent of ISO 8859,
> and shows what the ' and ` glyphs are supposed to look like.

So I give you:

How Groupe Bull Screwed French with ISO 8859-1

https://www.dropbox.com/s/oizx6vgbw01za0h/How%20Groupe%20Bull%20Screwed%20L=
atin-1_CG_1996___25_65_0.pdf?dl=3D0

I hope some day the name of the ignorant and indifferent conference
attendee will be made public.

Regards,
Branden

--kqzy6y5dml6deiaa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO3zJUACgkQ0Z6cfXEm
bc7+Ow/4vQGBBXd/xUDk/4AZ8/aycgxHVSCn5Hpd15ZSv6DQvdwLj3tYmbFj1HgE
4xnF+LnfrH/f5SVC31Z3M3EBWWjpRwSsGseGfIRDY5sN8vkxcwnE+yM3GZL6mxmq
QfSzyvfczKH4uA8+e2DDdmjpJc+aYpGh8GOORIjHtOlg9CEGGNAE2J7u3wrDiQ3u
JbYiXvEte53Xa478UAE71RXFL3YBJVxRujiKl3ctePrC0tUHV2+u4Uif8xuz5RGS
UnqpPS+9zoZH2+n85PJlso6FknsyJT6okT9SrxChGG6WhiMH5l6xKjlFhyJJvD3W
38/JTCaQaFheZ6gMIa5bYf2LYIi8hZaDTaRVTusyzNchRcoJUP8fmvxgV0sHGl/D
a3E0FpO5y3J8UKMEqGSaL+0rRneuDmRzVkuzbuPuJm4uVxWkpX2VfV56NQug261t
/rtz1GpAkhwuCRF8eUvHGFPGQG2ZfOIVjW1e+ipWbFgSReZkuJA53nvScAbfTil3
4mka9/6/7yT13WsqjHom7/c1JvkG6QN83TtEDXo1GH+Ryg4kvjBUItRF4nutVBLQ
Gm6jlq5arEDZTlE+aQFMH/xWtiuAsQMG85Fn1z957Jz7eF5bujKTri3btktipK7/
m5ccI3S3e3CpwgiDarMrK7ITraPss6Ej2dd68WXIkI61/ovbEA==
=a+2I
-----END PGP SIGNATURE-----

--kqzy6y5dml6deiaa--
