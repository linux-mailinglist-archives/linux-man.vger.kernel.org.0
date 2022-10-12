Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40F135FC8BA
	for <lists+linux-man@lfdr.de>; Wed, 12 Oct 2022 17:52:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229451AbiJLPwy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Oct 2022 11:52:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229577AbiJLPwx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Oct 2022 11:52:53 -0400
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1637F1933
        for <linux-man@vger.kernel.org>; Wed, 12 Oct 2022 08:52:52 -0700 (PDT)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-12c8312131fso19925075fac.4
        for <linux-man@vger.kernel.org>; Wed, 12 Oct 2022 08:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2xYc83rox7z3zvin7nLVxYyS0OhED/d+OGi5SoynAIo=;
        b=eKUDuXN9JjZ4l77jgScIXadH9+OYtDTje4eeerCVihTHLZpCjdIiLUYPmktEemVAT3
         NWgXG9TxaHPSKiXvASHb1TgweWvJoRzDtAC96MVVzzw91qmy0WdKy67n3sDcXXyAHYDm
         X9QcSH6N6+AYoztSZCkEjHGNXfbBa3WI/TMM70sMf0gAYWBoMxGPAqN/G6oWf/Ktj9nc
         JAiGAgLgB7jBqB2acIU0dEcQ+2f13PMB79212I8VuAxYyTno3T3NJ92cbvofVfGzZlLi
         qnzUATjkwzKuk8nPCaTPwMzZx785mgUAwWe9p5tBk3oURM24G1v8owRMzl2oC+llOw5r
         t3qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2xYc83rox7z3zvin7nLVxYyS0OhED/d+OGi5SoynAIo=;
        b=mlBj0Gy5Eg9S/F0OsnNhdslG2499huGMMld10f9RNgMfJp6CLrfrwfWp9LPYOcV+tV
         w+TKLbrVL/rGsm1LBK+7baK2MQvRUDAy1y/4oeVaN9Br8ObFGnZjChK4Vx84LCuJcYdV
         3CJ8KGcYsEZ7H+AEQz2Ry3lgaeA3U67rhXGGNCc2aVVnbe99O3YzEGWXmc2n3ebKt574
         HMuCiL3/FaL2DEn9JuKydcKrI0RGlOh/yXRDu6PGYhNelWBLXEGg6WHUYC9d9P58HvXE
         cQThqddlCB2f1Yxgmei7XXq0KdWcoIsZqtzWuzomCy9Gggi0bc46QD2tuQsPLXAj3tVP
         zx0A==
X-Gm-Message-State: ACrzQf18vG1lgcEBGPcazckB0I3qdQ7RLSVI0QSVRs2AuE7e32+Ya8uv
        af+IhoPZ+v0YizfewEB1UxTxuPS1sIY=
X-Google-Smtp-Source: AMsMyM5MbzJTNPJc6yA6eURdHmk0ayYCQEMARguPjLACbAUsYKyG6LdnFAMnyi0q2KSzs1i02H82BQ==
X-Received: by 2002:a05:6870:b021:b0:132:d79b:6ad4 with SMTP id y33-20020a056870b02100b00132d79b6ad4mr2867565oae.1.1665589971957;
        Wed, 12 Oct 2022 08:52:51 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id e18-20020a056870c35200b00136c20b1c59sm1270352oak.43.2022.10.12.08.52.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Oct 2022 08:52:51 -0700 (PDT)
Date:   Wed, 12 Oct 2022 10:52:49 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: 3-word compound adjectives; the return of the '-'
Message-ID: <20221012155224.yhlmkaid23aumzoo@illithid>
References: <82b77010-6b42-a58a-f8c7-b977297d6832@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="qdruity3m4rehnlp"
Content-Disposition: inline
In-Reply-To: <82b77010-6b42-a58a-f8c7-b977297d6832@gmail.com>
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_05,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--qdruity3m4rehnlp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2022-10-12T16:47:27+0200, Alejandro Colomar wrote:
> In a patch to linux-man@ there's a 3-word compound adjective.  I don't
> know what are the rules for such a thing, and I'd like to have some
> consistency (and correctness) in the manual pages.

Always laudable goals!  :D

> I've seen many different things in the past;:
>=20
>  a) block device-based filesystems
>  b) block-device-based filesystems
>  c) block- device-based filesystems
>=20
> And now I found one more
> <https://www.editorgroup.com/blog/to-hyphenate-or-not-to-hyphenate/>:
>=20
>  d) block device\[en]based filesystems
>=20
> Where the en dash is used to distinguish it from 'a block filesystem
> based on a device'.

Personally, I think the en dash is too much trouble to mess with.  Only
readers as meticulous as we, and those with good fonts and good
eyesight, will distinguish the en dash and hyphen glyphs.

> Which form would you recommend me to use?

Steve Izma articulated a good principle.  If thrust upon the horns of a
wordsmithing dilemma, consider recasting entirely.

That said, I'd go with "block device-based filesystems",[1] because
there is no hyphen already in the noun phrase "block device", just as
there isn't in "ice cream" (a compound word), and perhaps more on point,
as there isn't in "hot fudge sundae" (even though it is only the fudge
that is hot,[2] not the whole sundae).

Similarly, we say "thirty year-old bug" and "two-fisted drinker", but
"mother-in-law-driven divorce".  The multiplicity of hyphens in the last
case is because they're already present in the word being compounded.  A
"mother in law" would, strictly, refer to a maternal figure with an
occupation in the legal system.

I'd dig more into the underlying grammatical principles I would
articulate for these cases but I'd prefer to get this email completed
before next month.  ;-)

Regards,
Branden

[1] I prefer "file system" and "file name" to their space-free
    alternatives; I think the latter are the product of programmers
    forgetting that they're writing English nouns instead of C
    identifiers.  But I acknowledge that in many quarters those battles
    are lost.
[2] and it's chocolate sauce anyway, not true fudge--such is marketing
    honesty in the U.S.

--qdruity3m4rehnlp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmNG4tEACgkQ0Z6cfXEm
bc5auQ//e0wDk4MMBAjOGDFHBUD4daJA8BHOisvfJ70VvU4T0t3d6WuZaIHml3tn
qLrImb7vBlkemqJykkR6H1KIwdlGU70D9ntotoIfTFdKTl1AcqZJIRU5NrQkyMHK
LaJmn/O78S3O93bnANHX+4LaLS6hCqOw/NcURLET5JKaEniwKjhe+Z946ifFKuIQ
Lrh8lVP0b2sC+hu9P4mQc2R18MRxIqoS4m0/wQseleKPB8d0Oazdohg/nqjtIC5J
iBKyz0pOmvafOhcqQ+ZWAeHBgNExdubDYGywmqetE+Mziz5XoAEiADgr5M46sFvC
nNQuKKajedqNx5AjTzufu26XO3cB4SzWUapdqR2SJkKhWbORMmMlkxFhYn+0x9ST
gLXv39v3XCFTz2F0tq0ytszZ+AI21M37pLBg0JzXRYBXtj5DlZafn2aYguyy7epV
WSLVMDi/ftmCaBLpmZY11bJ+/5JyRZtQhXubYtznhJbywlEvw3s5I7tZZgDeDkNw
6z74SXFgfVKvvBt0DlW5LTpAOMUR+VplYYEZo1h5i5DcLlgOK+EtY6TOG/qz2sNU
GExYKh7V+BD1zW609iYogNicQ9ByFdvEciJxnlVlVL8htX1YYqOwIRs4BpqKIxGo
LyMC9sAHHQrzW9amdj3Z/6GzmAzEmckfr/jSTTQPf+4UaOq/mJs=
=xvFY
-----END PGP SIGNATURE-----

--qdruity3m4rehnlp--
