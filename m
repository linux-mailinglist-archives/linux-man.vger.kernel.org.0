Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE82E6E9BD4
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 20:42:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229543AbjDTSmN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 14:42:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229448AbjDTSmM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 14:42:12 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41F8BE42
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 11:42:11 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-6a5ef2c2a70so980211a34.3
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 11:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682016130; x=1684608130;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=b9LffJGDC8qKeHzY8luZcQ950oMk3RMyh60AuDiH8B4=;
        b=Yuxry1cxY7UQ6yOJiKwX6ZQjinbXkfuWa/LPWSiMmaqZHGiLigwKIX8HbjDYrSJFwc
         tc873BJ51t5fMa8BwAQEm1SmD9qHcIbYTCtnsttp4JlIKlhXxQsmKkXWKZ54dhhZQBAy
         bxDjV8mRQo4rckr+RyA4NNidvQG0i8B1o51/st4ctfBgWZutxeSR2bq9torcUgPnyAmj
         6sG/p3EpGuWX19Obz3R8J+Nj4kbzY87VJhoxp0dStavbkwNJlYBDnPfMLrDDShnCs2AA
         On1e+4hS59jHVu+BBtBd9bSFQbc3zvSUmZm5cO7B+Z8dHPyDKhqPXwclGCNNMW0GCjmx
         ZoFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682016130; x=1684608130;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b9LffJGDC8qKeHzY8luZcQ950oMk3RMyh60AuDiH8B4=;
        b=lcz6PlC5mXBBXqVU1vjsL6ZqrOJ6dShMA0OrQCjVIMtz9PVBW0nWmTyiIXICvRs/sY
         C+axATC5PNZLiumZ+eGR0Zt8tAwEck/fNFiKE6LU1BmVugd767o1bpPUYgV3p094m/yG
         NYTE70TCgZsdgqe1YmA8lSYzJ9ocxsBI4JtzE7hn1y/tQ+TiPY3hg/mpcXO8CHa00RgG
         eYlbwq0NA9L4j1sFtEYwwUN2PVkp/1mE4wcROiQLnFHlofhe2mlG1kQBV/idjEp8x+f6
         sizrBJNeOpimwkpzBRLEh9UO6n+GkmQWrT5/vPfFFesEQ3JVOhwOSH1i6uSi0AGRiqf9
         KdXw==
X-Gm-Message-State: AAQBX9dWmk/v9x3rw5KKOMzT7DhxXV9Y2zoRJmb3p4BsmCJg6+WM9LhB
        RZH9YjQLuyBkBrIx0MkeirQ=
X-Google-Smtp-Source: AKy350YmbmK7v/RmNN7FhfhvClTN6grZp9AmlVn6iybMHsCqQmZQ1DYjbQdnxLbxtrOsZGgbcvHyEg==
X-Received: by 2002:a9d:6388:0:b0:6a6:2c9b:94ce with SMTP id w8-20020a9d6388000000b006a62c9b94cemr902937otk.27.1682016130537;
        Thu, 20 Apr 2023 11:42:10 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id p21-20020a9d76d5000000b006a3df644d31sm987239otl.37.2023.04.20.11.42.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 11:42:10 -0700 (PDT)
Date:   Thu, 20 Apr 2023 13:42:08 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v3 5/9] adjtimex.2, clone.2, mprotect.2, open.2,
 syscall.2, regex.3: ffix, wfix
Message-ID: <20230420184208.ljcmvfgefe4manyz@illithid>
References: <47fdd2db-cf65-2ffd-1b33-d1f8e3a62b5b@gmail.com>
 <45hc4nxirbxf5oe23noyfpg4w24vtwfpnye5y5sgozy5j3i22a@5hueh33r4bos>
 <d1d90b61-9d3e-e124-c0fb-19d426540416@gmail.com>
 <e320c8d0-aea2-02d8-674f-a92171dff98c@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="xw4zxe6clcmvac7z"
Content-Disposition: inline
In-Reply-To: <e320c8d0-aea2-02d8-674f-a92171dff98c@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--xw4zxe6clcmvac7z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2023-04-20T15:03:24+0200, Alejandro Colomar wrote:
> BTW, another thing you might find useful is this:
>=20
> $ cat ~/.config/git/attributes=20
> *.[1-8]* diff=3Dman
>=20
>=20
> And then in your .gitconfig:
>=20
> [diff "man"]
> 	xfuncname =3D "^\\.S[SH] .*$"

Nice trick!  How on Earth have I been living without this?

> You may want to use a regex that also works for mdoc(7).

I reckon you could sweep up mdoc(7) pages as well with:

	xfuncname =3D "^\\.S[HShs] .*$"

> >>  .BR ntp_adjtime ()
> >>  are equivalent but differently named.)
> >>  It is a bit mask containing a
> >> -.RI bitwise- or
> >> +bitwise OR
> >>  combination of zero or more of the following bits:

Discussion of Boolean-algebraic operations is common enough among
programmers that it might be a good idea to settle on a specific style
recommendation for typesetting them.

I think either quotation (e.g., \[lq]or\[rq]) or shouting capitals (OR)
are tolerable, the latter only because the few operators commonly
mentioned have very short names (you don't see EQUIVALENCE much).

I would counsel against changing the type face for them (i.e., no bold,
no italics).

Regards,
Branden

--xw4zxe6clcmvac7z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmRBh4AACgkQ0Z6cfXEm
bc4/qBAAkDhkNzev5E/dyZAM2BDu6hxEYDCLxRYxEDCURQNKHj0EFgV6Cr/IQx5n
n2T95r+PHT65icc7BSVrggr+GpWmhcJgoQvCQFfzXBB+lriGwTy74F0SRi0oQIHU
OvD+5z47pFbotMFUwNOZ82OVjm6jMmiR8ioTRqPK0Y0fPMJIFFzPmopWcoaPNCUL
quec1DIPUxZD5gyPx+ORcQ5s5BRfKTYXKqiLzYK+C4zeaqEYKq0oQn6vmx6bq0bq
2qZBav5Oo+n6K7+yhJV/v6nfOIE+wJfkGi6+nOYQFpEhgWMyOZ7qIpl8fZ3Rowwv
uwW6URcIseRsjF2vR57jX8IGozl6PCmqe+hPaGMOSMXzchPycZT16E0hB2ebVKNR
qkcuhnsLD/GtjGgm8PAGto52IQlWN80NKDm6jcEjC+bGR6/0YGouX7CjQmXW24ze
KEtINbUN9FH+h4XIwCkdGpBH3uywZwlUQPExpA4zFRSQsk3PM9f89Jp+IZ9ui0ch
26Ycb/SCEuZhxyC3so8jwIcK2U5gQrJG9kL4p6HPH5QyATP2R3qfzquX3hoflDwh
xTOGswOVMNH15otVCbvY/OQW+7pFeTh3e4Bo4xQnr2IHeDJWLsNFXAQZeNP/X99S
30Otsii8OJBo3FgZcANvLIgv5uCogDrzcEh0psDHC8boSXP+n6Q=
=JOis
-----END PGP SIGNATURE-----

--xw4zxe6clcmvac7z--
