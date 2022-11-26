Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3DFF7639834
	for <lists+linux-man@lfdr.de>; Sat, 26 Nov 2022 21:44:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229459AbiKZUo4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 26 Nov 2022 15:44:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbiKZUo4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 26 Nov 2022 15:44:56 -0500
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1B5F186E3
        for <linux-man@vger.kernel.org>; Sat, 26 Nov 2022 12:44:54 -0800 (PST)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-14286d5ebc3so8881711fac.3
        for <linux-man@vger.kernel.org>; Sat, 26 Nov 2022 12:44:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Jm4XEgshzvB5rafHhFzdJ5ozFHc3fy1pXieTyKzNZ8Q=;
        b=U8vUU+3vqRt26x0tBaFVoTZNKghkQFVXb1RzrHf4gHBUhU1p0xVawuqwNWRALQJKNn
         LbkwzY1rWS9qr0+QAtdHKLxFHo//GP/C4WwDNTbrRy6xl1cA8uxoafN+eKByS0UcsD2c
         WgWXmZ8ihoVZ9qpjD7gLGammkKTWu5D5Qhzd9ISEtZbXtkhtgQaYjc20fc1YpjQnKrcJ
         rJ9pAyO9E9q+ttrLN/1omB9tnD+dHX3xG/ZHoOyptFqF79NH9sxo7pRXUzvPq4GUsgfx
         Bd7CMNosKlGq+O1R8GXxrBBLvkEhngK8csLP8qwCjBGqY2a2S0C5fpkfZkQUQQWVHK4Z
         1naQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jm4XEgshzvB5rafHhFzdJ5ozFHc3fy1pXieTyKzNZ8Q=;
        b=S9EKSnA4cTwuyq/euYu2L+s63jQSbeXZmwBW/bUSGzDda9qzaD0uJGXIenx+in4PIB
         mLoU6FwL5KzSUkbIvvhEdJNONG9CFP8D0SEhPDtt6nDAP3LtDZwuBeEAr8CeEm6sYD7D
         t7lXXkVNlAnH97vpmwcK0H8ITAyOHtv7zm9fQtPGgrylT8+eZ5BMesYKLHFDG3hTKkxp
         RSDOeURLLE3BzllFnxACpCaYB9U6pEH9a/4kK/VZNpnOEPiRGWOS4+7JHAkoCXcjFLQg
         OwAGpHN2YwxlRC8E6MleyrhEqFJS839bgMX45B+PDXNl5rlww/4yW9UJREa1JNnFlrd1
         kjcw==
X-Gm-Message-State: ANoB5plF7lQ40XLYrYWPP4K1dzX5peXl4CudoUjaLOw0YVEYnGxAuwX7
        IolPmpijUhomAjXpvvFfebGGqo5BXpiV3Q==
X-Google-Smtp-Source: AA0mqf5drC/QhwOLBab3BcGn6heJFr2DDnI+/DnyIIz98VYMWyYzvze93oad08Z77vDhPxmRJXwfXw==
X-Received: by 2002:a05:6870:698d:b0:132:4f67:ebf3 with SMTP id my13-20020a056870698d00b001324f67ebf3mr13815036oab.96.1669495494284;
        Sat, 26 Nov 2022 12:44:54 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id k4-20020a056870958400b0011f400edb17sm3826624oao.4.2022.11.26.12.44.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Nov 2022 12:44:53 -0800 (PST)
Date:   Sat, 26 Nov 2022 14:44:51 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     Russ Allbery <eagle@eyrie.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>,
        Time zone mailing list <tz@iana.org>
Subject: Re: [tz] Doubts about a typo fix
Message-ID: <20221126204451.byvfdjs2gfirdhr7@illithid>
References: <842adff8-8d8c-b189-8e6c-34be111b8b19@gmail.com>
 <20221123214019.6w2cv525fmr3akdr@illithid>
 <b91ea285-22f4-5f13-beb2-b0c74cc4db10@cs.ucla.edu>
 <87pmdaqu4a.fsf@hope.eyrie.org>
 <d596cea8-04e4-b10c-1a28-d9baf4c9d2e8@cs.ucla.edu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="aq6f3bahrdgq3llj"
Content-Disposition: inline
In-Reply-To: <d596cea8-04e4-b10c-1a28-d9baf4c9d2e8@cs.ucla.edu>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--aq6f3bahrdgq3llj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2022-11-25T19:50:14-0800, Paul Eggert wrote:
> On 2022-11-25 19:20, Russ Allbery wrote:
> > You have to be very careful with the combination of \f(CW and \fP on
> > Solaris 10 nroff
>=20
> That should be OK, as \f(CW - which is now \f(CR - is used only if
> \n(.g is nonzero, i.e., only if it's groff and not traditional troff.

Just for precision's sake, the .g register interpolating a true value
means (by convention) that an implementation is claiming support for
groff extensions.

This happens with Heirloom Doctools troff, for instance, if one gives it
the "-mg" option.  (There are other ways to switch on its "groff mode".)

Also, to reiterate, "CW" as a font name is not a groff extension; it has
some history in Documenter's Workbench troff and I think it may have
appeared in Research Unix troff as well in the 1980s, but I don't have
convincing evidence of this, just educated guesses based on man(7) and
ms(7) man pages from that era.  If I had sources for Research Unix
V8-V10 I'd be a happy guy.

> I toyed with using \f[CW] instead of \f(CW to underscore that it's
> groff-specific. However, that might be overkill given the number of
> non-*roff programs that read these files.

In my opinion that's not necessary, and implies too much.

Regards,
Branden

--aq6f3bahrdgq3llj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOCerwACgkQ0Z6cfXEm
bc6bwA/+JUNE8TDJM6gbUWnCkYi5/n5aNxFrdzDgQcRvhtZcAttcCPHGodZTa4AH
/XGjHtb/Oneyq8qy6sRK/N53jZswTwE9YWA8Ova8olTYFyHGCmagzt0DBy+7+dGk
+i3q7v/LXFGjpbwW03cvLALQ8bkwzsNGAw+zhn4oYE6s4JGuKw+FBZzNS/CxBQ2X
28U308qasGArGXnZ9ziGQr+HGXM9fw4stpWjn5poASi9nCrDoVxZtAPYrKgly+oz
HjS/z0EPrhDlFjvqoT6wuMUIhh51XVU1PtJ3in3UMURmTGtqxt488h+bpxLU5xt5
Dr25596GUnForeHO3jiVb1MUPFVwHUs7D42J5qYnwM8mcheibbJYdYyn2YsU5H/h
Af0xABxAZh34w5SYgzm8WJ1DPll1BEMmQNOxchuz2s7MN+pRJPpr1N+s4ftky02A
DlDvTkCjFP+Fidwkw7rAMr/bIQGkEPzJkiUDqMG2/gEOYnVqQtjYhNuDo2jlBwty
yIhWzNkxbacKeEuZRNJtMRbD8OePb/ZLrN7D19NJcoxYtifU5HHd9ojJTqVKDxgO
EuS3ciCM34wozZL3MmuS/W3JP2Eu94CgvtzxXqZB3sU3lM0A4AIRaC7Zrjc7dgxt
ArWhXtZCqiJGCrdZEum0WcSXmdCf7/mOVcqTvlKt10APt1cAwpw=
=EJOd
-----END PGP SIGNATURE-----

--aq6f3bahrdgq3llj--
