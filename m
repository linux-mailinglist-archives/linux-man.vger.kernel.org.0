Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ABF4F5926D0
	for <lists+linux-man@lfdr.de>; Mon, 15 Aug 2022 00:21:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229491AbiHNWVy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Aug 2022 18:21:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbiHNWVy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Aug 2022 18:21:54 -0400
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D0945F92
        for <linux-man@vger.kernel.org>; Sun, 14 Aug 2022 15:21:53 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id w197so7024950oie.5
        for <linux-man@vger.kernel.org>; Sun, 14 Aug 2022 15:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=Fm0RjMMLBLQgyZpssFPh1w9uUYgZnmPt9qVoVBkMCjo=;
        b=kIUf1qwJMRTtzrin0X9vWSKSuP+vw/RVepjNO6wYLc+MhimnN1SJ5Y4VfFgC9XK5tk
         Ju+4ObwdU7GJ8m1q9B1f81weUVA/O/Uhxz3QMelBbMs6nrV9C8A7ZRi74hvzLFGpYSEy
         BCMeecKOMcPRLk0jgyfXbs8UPJ5N2Crcl/V2sF5F9pxlkEAIHY6Xscr9gqD6UN0SduTu
         SwGOAmalTnUxPHUxGaDKghEt3cVP37vsYU5jVxbFS5NhEiDgwpoOpnTYPyCusEti612L
         G51ZYdm1lPoabzLZy7v2GI+KTPnAG7HG8hELQTZYj8mfkAbZoLVJC9SFADp7p63kB/vO
         Rg8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=Fm0RjMMLBLQgyZpssFPh1w9uUYgZnmPt9qVoVBkMCjo=;
        b=Rc93Wm0WY9gRMr+bFb9qlBe0o8SRY5QxjiiyMz1odzyLf8DW2fKzCCLjf7OUn11M0v
         0lEFgrhwkQxlHijqt7rKecjJ2BxfymJ2d1ysKp1AUyVLLMx1UlPFRbZ6Qh+GF2PNJK9v
         OwA+nn01HM+Xfi00KVj0g1V2WOhBW4rncZ7ltPfYxPkYlf4lENJnbv3YS9j1wF4yuVYw
         pgEn4rA1346AmnELgFDQnRCQVQsHnWOQuYYy5Okgsr7YHz1GHImaFgd6ylY0gfcsMFuC
         2MFOE/+spOwyScZNQ6S1VhSk9KBx7b8CadHaBsDwReuWmJOM98TMRLkhUUxhzJkLmv4W
         zGAA==
X-Gm-Message-State: ACgBeo017i5lZELq/S26CNvauyzCqQRncYSHJTZluc+ed0wZmrlCpaTI
        61ogP23qfOXROsTS0WQyd/u3mRKCkyU=
X-Google-Smtp-Source: AA6agR60ZKpJkJSx2dVdXh7mvBSSaqhXVrZn2h8VrNVsYkXVdh6uQ5DoI7UnGbcE/NW+QVAu0VT7Cw==
X-Received: by 2002:a54:4412:0:b0:343:50f0:4899 with SMTP id k18-20020a544412000000b0034350f04899mr5703157oiw.72.1660515712367;
        Sun, 14 Aug 2022 15:21:52 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id b22-20020a9d4796000000b006370815815asm1783973otf.61.2022.08.14.15.21.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Aug 2022 15:21:51 -0700 (PDT)
Date:   Sun, 14 Aug 2022 17:21:50 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: *roff `\~` support (was: [PATCH 4/6] xattr.7: wfix)
Message-ID: <20220814222150.u7nw2md6p35twqez@illithid>
References: <20220729205823.lcy4fbezlw32owgu@illithid>
 <20220730161521+0200.203910-stepnem@gmail.com>
 <c2ef3b9c-97d1-2733-df27-542c9eacad17@gmail.com>
 <8edd0272-0c43-b5e7-9220-20094bb5ae23@gmail.com>
 <YvT6s2Sv+M2bEldp@asta-kit.de>
 <20220811201714.a2o432xhkyyyj6qi@illithid>
 <YvZj6emfWNfwRjwe@asta-kit.de>
 <20220812221035.xd4udngmz5erht5p@illithid>
 <20220813042311.njw23k6g5mkrgknx@illithid>
 <YvkDmkC/0ZKTgDdU@asta-kit.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ghfb35htbl2ffoaf"
Content-Disposition: inline
In-Reply-To: <YvkDmkC/0ZKTgDdU@asta-kit.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ghfb35htbl2ffoaf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2022-08-14T16:15:54+0200, Ingo Schwarze wrote:
> > I also have a PR pending with Illumos.
> > https://github.com/illumos/illumos-gate/pull/83
>=20
> Illumos isn't doing development on GitHub.

Yeah, I promptly got a lengthy follow-up from a member of the core team
pointing me to even more lengthy contribution procedures.

(I guess this explains the "-gate" suffix in the GH project name.)

> Besides, Illumos is less of a problem because they have been using
> mandoc as the default manual page formatter since July 2014.

Ahh, so the general Illumos user won't suffer mishandling of `\~`
anyway--not in man pages, at least.

> All the same, getting \~ supported in their general-purpose
> roff implementation is no doubt nice to have, too.

Yes.  But I don't have the spoons to go through their formal
contribution procedure.  I think my PR will have to sit there as a form
of incompatibility notice, and someone else will need to pick up the
patch and advocate for its incorporation.  I also have a serious
handicap in that I can't test my patch; I don't run Illumos.  (Plan 9
=66rom User Space makes it easy to test _in situ_.)

I don't blame them for having a lot of process; their concerns are
surely more with sexy but delicate, high-stakes stuff like ZFS and
DTrace.  Not post-1989 developments in troff.

> That reduces my converns mostly to commercial UNIXes and potentially
> to a few ad-hoc conversion tools we are not even aware of.
> Consequently, the converns aren't 100% resolved yet but getting
> closer to becoming theoretical concerns.  If it's only commercial
> UNIXes and unknown tools that may break, the improved typesetting
> quality may be worth the risk.

And we don't know how many, if any, of those are even _maintained_, so
even if the knowledge of what to patch were available, the will may be
lacking.

I'll take my easy win and move on to the next problem.  :D

Regards,
Branden

--ghfb35htbl2ffoaf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmL5dXUACgkQ0Z6cfXEm
bc7l6Q//c1m5ft9hWOc5fO0vrXXvNdLTNKb0J8HySiVdDltfZsRloNN7nYq6hrEo
JpbMRyRe3unFz7ATasWvvuVMhiBq8LPvEBNTpX1qsQnmcm906S+/D7JRJJ1OXMSZ
VbsAmXJ3E6CQphqEDRVXFM12TMfkXiI6KPP5nhRkdFMlTH8Zsn9yL2s2cXBneLqb
bsIvF4K7+1j/4eJZsC4+Lc39d6L5fqjL036jevtcvbASllP6I5DIksK4xWsNFcWF
tNNV4z44iB1LzXeS1KN0dz73o5M0Q0yxPUU2e6xbiwaKq+C34lgvYlj1dKVV1Dn/
KmmULV0Ddk2InCjOl28LEqhb/OtYw7HSmUVtb94oiQcQ7rFbvmOo+uEKSeaZTH8f
XR63FoYnnHSUMFZuXe3TqK2OVLwIZM3pSk8fsvQRlq3jHICCu+q+boBh8Z8v+qYY
w48yxNSywQx7CxY1WneqQVe9psxwdALxhzIbS/C/ny9MCqw0AszfFgtDhBOq9nRb
HgRI0rNlvb5E53y4GNlgPyzwg0OT2h8yFEU8tBgMEOrDRQXhqnw3DrjJ4SbavrH/
v/bvOVZNoGFZ/a4q3ZQFct6OXsjTL54QJWZrh28KZBhgbrqXxUO3nmqtAtcreCvl
tiN4UWHgQ/fs/ita56ZAbhyJWdQ2NqGzDusxeu6O0f3MWXVvbkM=
=0m0K
-----END PGP SIGNATURE-----

--ghfb35htbl2ffoaf--
