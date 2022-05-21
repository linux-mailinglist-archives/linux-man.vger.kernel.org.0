Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB9BF52FDD4
	for <lists+linux-man@lfdr.de>; Sat, 21 May 2022 17:28:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236283AbiEUP23 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 21 May 2022 11:28:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235234AbiEUP23 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 21 May 2022 11:28:29 -0400
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AA4C3A1B4
        for <linux-man@vger.kernel.org>; Sat, 21 May 2022 08:28:27 -0700 (PDT)
Received: by mail-oi1-x230.google.com with SMTP id v9so8458221oie.5
        for <linux-man@vger.kernel.org>; Sat, 21 May 2022 08:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=oh031xhM7yFSVNxIu2KE+QdCQ20+bqlYTwRHtUXQbyU=;
        b=E5DExNHTeGKmLZkQcx0IXinz111X9w7RFFPUzTKQxWZwGiZDTvEEFhUF/x23+mjei4
         5APs0ubaB6p8jLPbHnoTEFsiRiXXQt3wTBSPKE4fRNiw9pO6OohPFQqQoKTFLVGjN8n8
         J2hU/3ON/ArA+g4+URRsvIX6vcJmB0vssFakZa/Fyt6LYY2LLNG5lvSL2mJmXRfQTvU7
         drDug6/8Fs7CWSl2xiKmEyylxmXRnboDXJIPX3uchs0jo2MTDPcf8e1nP1odUqW041q3
         bVK89DBkQ5gZ7KB0xo4xIRN9SrF4Je/UxDEtznVIOIFBE9x/yb0S2R+THeCzGQE2kKtR
         PewA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=oh031xhM7yFSVNxIu2KE+QdCQ20+bqlYTwRHtUXQbyU=;
        b=Z14c8hNDbaiqLRZTA+4xQW5G5ftNoNYK1ApqWNA0izQU1sCfGje6PYmmv4dJATYR9u
         YXNGv+5P5Ako2dHItEbnlCf0Bdr387a9wRXmS8je2RXEOuLdk0y2x9mkZxZ7+MwBIeSE
         UPLIk8LMYukYvm4R+3gn3ewwT4LqR8SgUgSsSCuPzEx4YSgXUtvJdKbEeZ29bxaP2MWR
         dbLIqgA/7g1UYYydA1YgCjq/2NL7hrJg2iPdLxzm41WOefbJHsFKT/J/kNOQtv6rnQiS
         0W/5SkVhBh9LkzdFdqrDq0DSoIt2NsKL0C7yrOZ9u66Ubar/L6uZhJw4zIbDrYeVUv2C
         09Hw==
X-Gm-Message-State: AOAM5325lWkBCIFfTLXDmm7IRKJz5fav/rbGm7Bd1mN01mDv6w5xuCQQ
        RZmwXCLrkwlgv7qFawiDE5+K3VGFJxQ=
X-Google-Smtp-Source: ABdhPJzySwuKxYWlCSlqqznldu63A2FvsZ/Oqqo3+Z+l/BzLyjwrHkP+ICQ6bj3H3EkgBvtA5WNDDw==
X-Received: by 2002:a05:6808:150f:b0:32b:888:f534 with SMTP id u15-20020a056808150f00b0032b0888f534mr3355518oiw.223.1653146906441;
        Sat, 21 May 2022 08:28:26 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id y199-20020a4a45d0000000b0040e699e8d8asm1701672ooa.45.2022.05.21.08.28.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 May 2022 08:28:26 -0700 (PDT)
Date:   Sat, 21 May 2022 10:28:24 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [RFC] Various pages: srcfix.  Replace .PD 0 with .TQ.
Message-ID: <20220521152824.knp272wwl7qzpjmg@illithid>
References: <20220521150040.45966-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="urb2r32qlzcchugv"
Content-Disposition: inline
In-Reply-To: <20220521150040.45966-1-alx.manpages@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--urb2r32qlzcchugv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Alex!

At 2022-05-21T17:00:41+0200, Alejandro Colomar wrote:
> Hi Branden,
>=20
> Could you please review this Linux man-pages patch?
> If you like it, I'll apply the same changes to all of the pages.

I am uncertain about this change.  I like the idea of getting rid of
`PD` calls, but I think there in value in having `TQ` possess semantics
of "here is another tag that is related to the previous one after a TP
call".

You are (ab)using TQ here to avoid inter-paragraph space.  As I noted in
a message of a few minutes ago on the groff mailing list[1], it might be
better to wait for what settles out of a discussion of the `BL` /`EL`
macro pair I have (not yet formally) proposed for a post-1.23.0 groff
man(7) extension.

Regards,
Branden

[1] https://lists.gnu.org/archive/html/groff/2022-05/

--urb2r32qlzcchugv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmKJBRgACgkQ0Z6cfXEm
bc4y1Q//QhKKrt8YPzr9qQn2dY2cP6U4CxLI7ZnXqCMZvjFRq7s+wlzJRAxOC1FZ
hPB3BE79HpB+uyT+fotMsDxDfetYYMGpa9CQ3VWLiPxSLnlFiyNSHUjRlB4yNXU2
LV23aiqP1QAHpuNyIDAr+N1+dbSYYuDd5sKbbDhplkH6xmDO0AeCkMQtqsoNBG7P
qL+UHsEv89i5/cc28DbuQ+U7aMEYcsguQC2upQKOT/Ou2qb7P2b8cJkyQj8dothT
JjxZ7OsOUsEGF0emPq/G/QXlAGfAZzgyW956XQ0dLVmzqmzvvklhQc1ZCSgEFmLG
wEf3/BXkfaSpVcucfURs6gN6HV1n5L3+vrHvDrSH/hlwOXXV06VHzP8NrMipy9Ag
C7G/S+vW8hG3Kql2T5XvSge56V6QfGpsUWqGXUzaFyBU2Z9BepAkFvO/NKGCJt0T
OgW75Lo6GMzlmlXWnPps74rio/9xJ19GctW6traI0Zi0p6Bk6Eqjm+5cphI/SyTH
DQ3XoFUORr+93LK+y71x9+0eNbE/fdJgKKeMLpSTN8fdDpK4fC3hcH97MPHnGvsU
qNp0eNTzx/KKU31Jkc2qjAhq3mF+JwxTdDUWQ1eIfPb32rprmwK0Wz9g5Q2me/BR
7RlXcWl6IRMKnQerlIw55Wy/kEuIxo2MfOh/TbAF8wapIy42v/s=
=sosi
-----END PGP SIGNATURE-----

--urb2r32qlzcchugv--
