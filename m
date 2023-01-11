Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED68E665F4A
	for <lists+linux-man@lfdr.de>; Wed, 11 Jan 2023 16:39:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235186AbjAKPjr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Jan 2023 10:39:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232477AbjAKPjq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Jan 2023 10:39:46 -0500
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D94FC19C3E
        for <linux-man@vger.kernel.org>; Wed, 11 Jan 2023 07:39:44 -0800 (PST)
Received: by mail-oi1-x231.google.com with SMTP id o66so13018437oia.6
        for <linux-man@vger.kernel.org>; Wed, 11 Jan 2023 07:39:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IvzuwQ4+biIx59G6MYYv8fvXFhCV8IvbB4rgBWsGRPw=;
        b=JY0gsUaop1R/EwBl9uS3SMcYrGoePjlu1RBVJvyp0q0X2C0I439EJ0xZjAMY1c1zGh
         m2Un8bun5VBqOonCuLnW0heZu8zcLevOFq6sLTePMWtRbtYkiVInfxb0ak4C1OfhahgO
         VE/aRbezU+JWcC8jWmpY20wwTPtQw+5/qPs85tUQyNsg6liJoZycAdalMDfXzvCyPGyN
         TOI1R57bViWJCUMeVgQ/I4xbcN5eQEWZuNIxqdEQpsk2hb6cOhBsR9pWWsTsY2px8F15
         8crqYV/oymO58kl7sHfNqMySD4ZKonXm3wUPbMae0JQXmmWcZrGRBobhYzWulYzGMEEv
         1d1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IvzuwQ4+biIx59G6MYYv8fvXFhCV8IvbB4rgBWsGRPw=;
        b=aZLycyOACAs/CAEnWpXbTUP5n64rgMcSHxxCvT3kUhomBh55FicDaur6iVCWgCfdnJ
         Wg8RW2Pfr0IxT3yB+EKdhH03otZ4Pz7YmM8+Niq9Sd1oHWoRii8QLAPMgwiukOwpcBgZ
         hX7OUwhzYOkQ4qlj8TSJx4M/wxLVDMep82O5lUs4f1nc6j3EurzgGoc7kwIkfUF+mk44
         dgFKiHiWJDGrZ6UgG73mjf9V3PwynNk6/bcbQTM3xX7yPNKnIuR79WU1MtX8PUR0hG+k
         kZ3KzccmZlyfBjRTNlG41xBtuoU8Zr+wAIIINkxl3OGxYvLbH69VG1Ob18ek54GQ0U3Z
         L9oQ==
X-Gm-Message-State: AFqh2ko10cVoGYE5UB82rl3GLiFoqmEYX3UiKWHs6DnpgFQ0J/QAUjZM
        YtMRYLcqbQdgBp/kgN/Ny7Y=
X-Google-Smtp-Source: AMrXdXvafRxW5DkNHhSMPr/X30QmpTaeka66JJsKK3wbdxQCImEjFwmFnoI7uQPsGAC/0F4REgtbbw==
X-Received: by 2002:a54:400b:0:b0:364:5ec5:bc with SMTP id x11-20020a54400b000000b003645ec500bcmr2874516oie.59.1673451584257;
        Wed, 11 Jan 2023 07:39:44 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id e19-20020aca1313000000b0035468f2d410sm6585470oii.55.2023.01.11.07.39.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 07:39:43 -0800 (PST)
Date:   Wed, 11 Jan 2023 09:39:42 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
        linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        groff@gnu.org
Subject: Re: man page width limit and example indentation (was: rseq(2) man
 page)
Message-ID: <20230111153942.guu5nr6dwphy2gzc@illithid>
References: <095c479b-baed-9d11-08a1-e698f59763d9@efficios.com>
 <425ddf00-24a1-bf02-29f1-937ba1545020@gmail.com>
 <71b43f20-5d6d-f3f8-b3cd-786dfbc8d34d@gmail.com>
 <c8cb6136-6924-4fae-f4bb-981dec2e1952@efficios.com>
 <71e6728d-c2a8-e646-5c6c-2de8dfa982cc@gmail.com>
 <20230110190311.fk3outm4x2ojl4dm@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="gtpgqyhlghyhzmqp"
Content-Disposition: inline
In-Reply-To: <20230110190311.fk3outm4x2ojl4dm@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--gtpgqyhlghyhzmqp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2023-01-10T13:03:14-0600, G. Branden Robinson wrote:
> 4.  In preparing the attached exhibit of all the above weirdness, I
>     noticed two further bugs.
>=20
>     a.  I need to revisit my fix for Savannah #63449;[3] I'm still
>         seeing unnecessary drawing of vertical rules 1v above the top of
>         the table in circumstances where that isn't warranted (i.e.,
>         there is no intersection with a horizontal rule).  More cases
>         for the regression test.
[...]
> [3] https://savannah.gnu.org/bugs/index.php?63449

I've pushed a fix for this and it will be in groff 1.23.  The
description above is a little bit garbled, confused once again with the
highly annoying but difficult-to-fix Savannah #62471.

The thrust of matters is that

=2ETS
| L.
foo
=2ETE

now behaves the same as

=2ETS
L |.
foo
=2ETE

and

=2ETS
L | L.
foo
=2ETE

with respect to vertical space above the table.

See the URL above for details.

Regards,
Branden

--gtpgqyhlghyhzmqp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO+2D4ACgkQ0Z6cfXEm
bc6y/hAAnDe5G5N50lrNQgdVOeokELw2dQdy7OpwmRsV9JKTZMfg/4Tp4uKmTqll
BGbrDAh5I2J4Ui0kUgwGuhXTqjIWLV/M+Fk+StsJxNxr04fmy1U20b6FfnnbOcfu
rWAmkbBFSaHPPBW+ImtuvJsr2OVihxbopdKI2Q0zmmMlm58zetSBDi96pQWeQJw/
JXM51eXkEb3hE3jV5pyn6xkNd+hDmpFsAk7y7WjhXLx/96MeOWoSqM3FbiK9OBDB
F3w+i6wOEsb2UwDEqEbH4tbUdUDEGw8z2Y/JEf1MWAj1/hJUVj4LZVIievjlGIjO
zvb1tfKA9eSazkmPJuPeUm7CBw8slUPR4h8Y7PLoRYt8xf9tymNWeUbtwlBPShyG
jjdgG8nrX/c6QdXx/ZGwG4KRsqmJbyj6Wj37NAR+tNFfYvBz8jN7JeNOIsyX12sR
TeCGJhAHnJDO5NSImxfjUaRuaE9OyG/UTUhvZF9Hf/IaitiRtFhW901RzvyhCTgz
kwsGXAaekmIhX2ShBNIDB+d7g5nyII2l5WDXo4BopYNCntg8CxX29Ny3t2MziUBG
ZZyq36jL1GXPkj9fiNotK0LnfGG31zdqJLqqarKwK5hquSD1+BRw1OJSVKfdAYol
3YDsVdxyyl7imPPsEBLPzHPRhvEVXy2fzWaWGg4jCR92HI53ao4=
=v/eI
-----END PGP SIGNATURE-----

--gtpgqyhlghyhzmqp--
