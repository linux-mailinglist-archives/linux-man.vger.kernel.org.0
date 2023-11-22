Return-Path: <linux-man+bounces-143-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D957D7F4C51
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 17:26:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3F447B20F62
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 16:26:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A39AB24B32;
	Wed, 22 Nov 2023 16:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Xbns74l3"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADFA7BC
	for <linux-man@vger.kernel.org>; Wed, 22 Nov 2023 08:26:00 -0800 (PST)
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-6d7e51638e7so1134478a34.1
        for <linux-man@vger.kernel.org>; Wed, 22 Nov 2023 08:26:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700670360; x=1701275160; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CDQ2KgsqgLvqRyr//TeS/f+JIPXUJ0kzkU9q9Za4gTE=;
        b=Xbns74l3HYHeSpGxJhVOLHK4wCGg8b8OZmqOcLRSlGE04fgMUPa3Ibz+YvbgU+2Kaw
         U3bqz53ThAWKC2DM1SL2q7XfPaJfcKgVLcIYeFrHS2WyGj0R0cf9UtbpmjjSPJQY41ef
         UQTe026mZcGJqbZw3BvvFLUAA50EdTjir4rKPIE3UiE1k70Rb44mEUx9Fw0AN6juwRI0
         rkf0FW2qH6Wg0xbKvOaaCkEDygsNtyiX/Ast7bRn3yFXSv3Br9R6IKAJ+d7mHk3TdQ7q
         OQKoXENWjHyrvi6MMKdQNOZcr+kaYjRFFjUARnCQjMJtCcrT3Busi8/hCH5y9notS3l0
         R7XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700670360; x=1701275160;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CDQ2KgsqgLvqRyr//TeS/f+JIPXUJ0kzkU9q9Za4gTE=;
        b=xQ3t0r8K5xn/4WzyaKq4i68G84JdGZSXYk2OyUL9ykWbO8K/D6c+2308eVL4SE8dds
         ehz2GsTLhyxlZreorTw2xdL2qKNoDRJ/sF/9AuJIFlO51MBu48ZXUNkoQ9SvT8tKYqXh
         fmUOSyXbabgf6+Et0hHjuXZ9qr+uYTnc3MrJoeXw2J/zaL6mH/2mHpAg1nkfNU7jXCUd
         gw+9CGwoYUnLORt/J/AFpoNKfXVUKOm4YvawpwyJGLrEbqaM8GPGi04D5h1mE5d/vOAv
         jjDhuBthAQFgu1g3TtrZ8qrm8PM4w85E/hsrTc8D1YMv+7WlkD8KtGAI/hlaLncZq7V8
         LQGQ==
X-Gm-Message-State: AOJu0YwaUfr+pRCRRGI2l5lWDvtHuOfg52GqIXeKIpQIY6+FcHcWarVd
	wL9A8A/O9DUQadeOOm0bDL+nhhSKmNE=
X-Google-Smtp-Source: AGHT+IHpgxl5DdsneyaIsQVgUAUty3lBFTU+TgJXur447KFVVbHd506tQ1MSQtpxYAgarBbQnLC2SA==
X-Received: by 2002:a05:6870:3d86:b0:1f9:5ef5:44df with SMTP id lm6-20020a0568703d8600b001f95ef544dfmr3567639oab.14.1700670359811;
        Wed, 22 Nov 2023 08:25:59 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id o1-20020a056870a50100b001f49285a366sm2194822oal.45.2023.11.22.08.25.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 08:25:59 -0800 (PST)
Date: Wed, 22 Nov 2023 10:25:57 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Matthew House <mattlloydhouse@gmail.com>
Subject: Re: [PATCH v2] CONTRIBUTING: Please sign your emails with PGP
Message-ID: <20231122162557.mdd3z6hmt3pz43bo@illithid>
References: <20231122134716.73658-2-alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hqx24hrklfvjsk6y"
Content-Disposition: inline
In-Reply-To: <20231122134716.73658-2-alx@kernel.org>


--hqx24hrklfvjsk6y
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-11-22T14:47:58+0100, Alejandro Colomar wrote:
> +   Sign your emails with PGP
> +        It is strongly encouraged that you sign all of your emails sent
> +        to the mailing list, (especially) including the ones containing
> +        patches, with your PGP key.  This helps establish trust between
> +        you and other contributors of this project, and prevent others
> +        impersonating you.  If you don't have a key, it's not mandatory
> +        to sign your email, but you're encouraged to create and start
> +        using a PGP key.

I think you should alter this advice to employ the active voice, not the
passive.  When an authority is dispensing advice or direction, people
need to know who that authority is.  In this case, it would appear to be
the Linux man-pages project maintainers.  If there is an external
authority whose advice you are transmitting, then that authority should
likewise be cited by name.

Such a practice is important for long-term project governance because
that way your successors know at whose discretion the advice can/should
be updated.  While it does sometimes happen that a project changes
ownership into hands that are reckless and produce senseless churn such
that careless retention of old advice is actually preferable, in my
experience, it is at least as common for them to pass to people who are
uncertain of the motivations behind certain decisions, or cannot tell
which decisions were made with deliberation (as opposed to "going along
to get along") or following a recommended best practice that has become
invalidated by the passing decades.

The recent conversations about string copying on this list reflect just
how complex and frustrating such matters can be in another domain.
"Everybody" assumed for decades that copying strings in C was a
trivial matter.[1]  Now, we look back over three decades of our brethren
crucified upon CVE crosses along the Appian Way to a better C standard
library, and realize that Seventh Edition Unix probably should have some
offered something like a string_copying(7) document.

> +        There are many ways you can sign your patches, and it depends on
> +        your preferred tools.  You can use git-send-email(1) in
> +        combination with mutt(1).  For that, do the following.
> +
> +        In <~/.gitconfig>, add the following section:
> +
> +            [sendemail]
> +                sendmailcmd =3D mutt -H - && true
> +
> +        And then, patch mutt(1) to enable encryption in batch and mailx
> +        modes, which is disabled in upstream mutt(1).  You can find a
> +        patch here:
> +        <https://gitlab.com/muttmua/mutt/-/merge_requests/173>.

I find it awkward to "strongly recommend" a best practice that isn't
easily facilitated by _any_ readily available tool without further
hacking.

That you have to dispense this advice suggests to me that the status quo
has not yet caught up with your ambitions.  I would soften the strength
of your recommendation and explicitly concede that better tooling
support is necessary to advance the state of the art.

I "manually" sign my messages to this list (that is, via keyboard-driven
menu selections in neomutt(1)).  But I don't produce patches in
sufficient volume that this tedium rises to a serious annoyance.  So
what you might do for the time being is to focus on advice to similarly
situated users, and concede that, for people who are high frequency
patch generators, technology is lacking at present.

Regards,
Branden

[1] I encourage anyone with either a reverential or heretical turn of
    mind to review =A75.5 of the 2nd edition of _The C Programming
    Language_ and consider it light of our string_copying(7)
    discussions.  I would attend particularly to what is implied by the
    recommendation of Exercise 5-5 to implement strncat(3), strncmp(3),
    and strncpy(3) from scratch.  (A Kernighan & Ritchie idolator might
    claim that they perceived all of the conceivable problems in 1988,
    and offered the exercise as an elliptical means of warning the
    sufficiently savvy reader that the standard library had gone astray.
    Personally, I think such an inference is inconsistent with Ritchie's
    own expressed opinions about obscurantism.[2]  But if there's one
    thing brogrammers are free with, it is negative assessments of
    others' intellects.

    I recently read an ACM oral history interview with the designer of
    the Pentium Pro.[3][4][5]  He passed along some excellent advice to
    anyone who has to endure a toxic working environment.

    "...if some human mind created something then your human mind can
    understand it.  You should always assume that, because if you assume
    it, it throws away all the doubts that are otherwise going to bother
    you, and it's going to free you to just concentrate on 'what am I
    seeing, how is it working, what should I do about it, what am I
    trying to learn from this'.  Never, ever think that you're not smart
    enough; that's all nonsense." -- Robert P. Colwell

[2] https://web.archive.org/web/20150218135530/http://cm.bell-labs.com/cm/c=
s/who/dmr/odd.html
[3] https://www.sigmicro.org/media/oralhistories/colwell.pdf

[4] Only one point concerns me about it.  There's a clash between
    Colwell's assertion that Intel had employed formal methods to
    validate the original Pentium's floating point unit, and accounts
    I've received from other sources (independently of but consistently
    with the Wikipedia article about the processor) that Intel had
    consciously _foregone_ such methods for that chip (presumably due to
    expense or deadline pressure).  The result was the infamous FDIV bug
    and, so I hear, a resolution to never again skip formal verification
    of the FPU.  I wonder if Colwell was mistaken here.

[5] Colwell's assessment of and stories about the ill-fated i432
    architecture are also worth reading.  The popular conception of that
    CPU constitutes a negative lesson like the one commonly expressed by
    Linux hackers who thoughtlessly traffic in Torvalds quotations about
    microkernels (as shibboleths of their clubhouse memberships?), in
    which we can observe the imprudence of parroting claims about why a
    technology failed.  If we accept Colwell's account, the compiler
    group tasked with supporting i432 was effectively a resistance
    movement against the chip architecture, and deliberately sandbagged
    the machine's performance.  That it was "stupid" to try to support
    the Ada programming language in a CPU, and to design it such that
    access checks were supported in a robust and hierarchical way, is
    the _wrong_ lesson to draw from i432's failure--just as
    "microkernels are inherently inefficient, hurr hurr" is precisely
    the wrong one to take from a single example, Mach, not being
    performant in the 1990s.

    But don't despair.  We can combat the claims of the ignorant by
    gathering and evaluating objective empirical measurements.  And then
    your management will select the wrong ones, to the exclusion of all
    others.

    Masaki Kobayashi warned us--there's no escaping the human condition.

--hqx24hrklfvjsk6y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmVeK40ACgkQ0Z6cfXEm
bc4QaA//UEfDP2xi6huguiINk4rICCHQp0jg22IG3YBtmhBcg9aP4F4nu0Im5jS/
/qBXt1N6Typ4x9fKWfoF2UhUjp+aw45nH51MtmaR319pwb9+HgzKA0k5lY8CHo/a
mkx4h29d+S+fHX5G/fw5GOYN1raeDawuqWQYGDIOBClLXih2BB1f4Gc8WaDnb91n
YoK7J3g2dvDnOe3U4/cJEa7sxcL0Ojk5qhsKsqf04hg8TSgaNAiVJCfooa9UALV2
5ZBXNTKxZUTcycO45AD0Q70I3UDqTYyOK2FRdbWD3oztEZquaCCWBII3OOqrHVXv
xHJvgf8gMO117q0cxY8xAXoEUlv2WKv8Ak+qYUiqoVYe8O1TJlJ84ZvVOj+JhMod
bbK5VBB/AhmOj1TSMY3O69mpFRJdTV7MiM5xTQhwckaWbqSXRlgctSufJCUlBLbe
1utT1dM9S1P1pGPKXnTJUa7jFXUkPykmAtDCmeHRpWgWCWA1jtgEX3+Fl9Qxxugs
RbVQnYztbhskSlLf+A5DsD0lWGeYdJYBfzpbaOHbuMSKmG4Xqd92aF1FzSDnFd0C
N6rf/Fug/jhUdIfTgOLeeGCQrPu5hffh6K4iMwwuHi3SYwdO9V4ESJhPCbQ2AFQo
+MqCWUJ8nLIKdSYEmsKcwDZ15q2l+Js8TgJJq3A0LUv0dvQWqvQ=
=SVWX
-----END PGP SIGNATURE-----

--hqx24hrklfvjsk6y--

