Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C0567D8601
	for <lists+linux-man@lfdr.de>; Thu, 26 Oct 2023 17:28:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234684AbjJZP2T (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Oct 2023 11:28:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231200AbjJZP2T (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Oct 2023 11:28:19 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3FE7187
        for <linux-man@vger.kernel.org>; Thu, 26 Oct 2023 08:28:16 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-6ce322b62aeso622640a34.3
        for <linux-man@vger.kernel.org>; Thu, 26 Oct 2023 08:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698334096; x=1698938896; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=K1JnFq7on442SWDV/2YNS1e/LkkRLJSEM9x8zVM35W4=;
        b=hD3o3gHHek7CaygKUOPVP+4YjKqNXAcDBldxSoZFbIFsnG+yCQI7bUmQkomgHea69f
         ImpmymXqQrUEi+FrNa1nfOVGItGqfhUq71QMOZ4wONwtd3Oe37gwVfzLk3OK3KZZwCdf
         iK1Jeuf/i3KR/V/kY0v7JtM6r3H92/prl1YybwFs4DlqGmiROd/mwxIriUaXF7JqBDJu
         971OuoiAFDIPTXwfjmlnODQFIlG9EoAjRMdIJ55nAkSk/BqdSSa/oiap6bSsuK8UoPJe
         gvL4IP9IUTGxpL0CZ1giwqbbLeU1e6ltQGOg0SkDQFAw1nr+u1p0R9ZMuieEsOX9wPlV
         VRFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698334096; x=1698938896;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K1JnFq7on442SWDV/2YNS1e/LkkRLJSEM9x8zVM35W4=;
        b=rm2YdVcnp103U+FT/dimeywDkco8obiK8mGd5dD6azuq4vjdaLB5ikCcBvaH7X3VlA
         p2AZBoiE+gn5/wJdxtR8ZY6W+lq77BIZfHfry6sm0RcNJJ56uMt+piFCsW63eAjVZBn/
         v1ijI8Gw4kyWKI7hgB25+UGg/8e+QibOT0mGNVSV1f0JHjZqzZRw/yqH3qBbdYibHqZD
         Ja4jQiQ3haQINQaFBXbEUv+5lPyphMd0RRMWOAavE9SR7tnjn+TrTniqmY8u1nLUl5mN
         xIpfLJhuxl+a26VH1QsFWwiusz1AaPozGrkh/xlyCioBSBlDkgDbnjSj6Dv8DVjQpAgS
         3cSA==
X-Gm-Message-State: AOJu0Yx8upT/0lF3JYLUPk52Cxr9zsz5LCnfbe0KmJ7dcs0Fqqw7NzRd
        NG6VU/maWt/Y9J64nOqvLv0+P8gfQlY=
X-Google-Smtp-Source: AGHT+IGOeD5W5XlNYKiQ1Pi5DdJZROcN2cLKfqY0zWyL5e3loI4mpt01jCsvkjqRnNrXajuP+puZNQ==
X-Received: by 2002:a05:6870:cb8c:b0:1e9:a5f2:aab2 with SMTP id ov12-20020a056870cb8c00b001e9a5f2aab2mr24143736oab.37.1698334096118;
        Thu, 26 Oct 2023 08:28:16 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id x6-20020a056870740600b001ea4324364csm3085681oam.12.2023.10.26.08.28.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 08:28:15 -0700 (PDT)
Date:   Thu, 26 Oct 2023 10:28:13 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Why does man(7) have 3 paragraph macros for the same thing?
 (was: `\c`, mdoc(7), and man(7) extension macros)
Message-ID: <20231026152813.6jziefb3umfmshb4@illithid>
References: <20231025185424.txreg7q47zigo24j@illithid>
 <ZTlu2r8N3nrCnMpa@debian>
 <20231026125835.phpfjhz6xbsde33d@illithid>
 <ZTpz3A0yijoxDvip@debian>
 <20231026145140.qyl4lsfhp3644hmh@illithid>
 <ZTp-hZTj7cmKMlXb@debian>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="n5mpo2te5njim5qx"
Content-Disposition: inline
In-Reply-To: <ZTp-hZTj7cmKMlXb@debian>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--n5mpo2te5njim5qx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2023-10-26T16:58:13+0200, Alejandro Colomar wrote:
> On Thu, Oct 26, 2023 at 09:51:40AM -0500, G. Branden Robinson wrote:
> > At 2023-10-26T16:12:36+0200, Alejandro Colomar wrote:
> > > Regarding PP, LP, and P, what's the history of them?  Why do we
> > > have the 3?  I'm willing to reduce them to just one.
> >=20
> > I invite Doug McIlroy to go on record, but my surmise is that they
> > were introduced as crutches for people already familiar with ms(7).
> >=20
> > Doug's original man(7) (1979) didn't have `P`.  But Unix System III
> > added it in 1980, and 4.3BSD followed suit in 1986.  This
> > information is in groff_man(7).
>=20
> Was the original PP?

It had both `PP` and `LP`.  I reckon Doug figured ms(7) veterans would
have an unreformable habit of typing one or the other.

https://minnie.tuhs.org/cgi-bin/utree.pl?file=3DV7/usr/man/man7/man.7

I'd have been sterner--and probably less fondly remembered by my peers.

(While I'm armchair quarterbacking Doug's plays of 45 years ago, oh, how
I wish he hadn't have used input traps for anything in man(7).[1])

> Still, compatibility with ms(7) would make it slightly easier to
> trasnfer learning from man(7) to ms(7), would one learn it.  I know
> many other macros are incompatible in bad ways, but the less the
> better, no?

That's true, but these days the knowledge transfer is, I submit, vastly
more likely to go the other way; that is, people will be exposed to
man(7) as their first roff macro language, and might decide to pick up
ms(7).

At that point, they'd have to learn that `LP` and `PP` do _different_
things.  I think it's actually better if they _don't_ have to unlearn
the "fact" (applicable only to man(7)) that they are exactly the same.

Better, I believe, to promote only `P` in man(7).  Anyone wanting to
pick up mm(7) will still enjoy some knowledge transfer.  Without
arguments, `P` in mm(7) "does what you mean".

(I will not elaborate here on what that means; see the groff_mm(7) man
page in groff 1.23.0 and please God not an earlier version.)

Regards,
Branden

[1] In practice, nearly no one took them up for any purpose except the
    one place you _had_ to use them: `TP`.

--n5mpo2te5njim5qx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmU6hYYACgkQ0Z6cfXEm
bc7Bwg//TcARua4QzxO8Npse+1IexqTpQrm6XezD7NrtnoYurkDLbexrcUOJiXiY
Z3TB3JsHX+Lqgvhg8qlstm4YRyQ1PdWbMONtZCH4jukYdwj8FuD8bg+ZTttQylOi
aHZylTB8k8QeVerqjZxu0Q7FH47AJZCBsqybdTX+CtbM8g4Ii0k3z63jKqo7xjfI
mqa++wV12OObvqMdZWDlLvlBdAZIGAuXWn2HgOMgMAOc69dnn7eifl5VV3vWD/HP
WVDr9CoMh6ZPkiW0LD8JJr6tg22l8x6zLHw0u+ILmxCKZiwoJXmuv/ED6s3Fyaby
SepXPLgQCgDzk1P3WPzegLO0fQr0Uat7paEWPj/+ra2fVnPBrfrMy5ITJRb6lk4y
p0B6nThnfW8krWhY2AJwfy31KdII1GjkKUXMc0j1GpnIDPd8yekvAtsMv5ejuA7M
AOa0/TAg8Q9tW1iSoUyiWkaImtNd1dQw+XKG95ri1JkFP6+N0Igh/Aj5AdCtYLmD
CKh7axpb1WvSwpF2K68+LfWa/kAcTExi6UOzzzd+0F/c6ftB9NXmpISUTbFV3RN/
OzOXvt03YDQ9txrt9Nzlf4gC/fgl94Ypfm+ohhJ9vpbw66MZewcOWluTOWpvU/88
27q0+a76LvQBYrJq2jS8WDU0BmrZsWqdAAeqHvv0ewEbin+OEMA=
=RRqw
-----END PGP SIGNATURE-----

--n5mpo2te5njim5qx--
