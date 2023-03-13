Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05DF76B6D1E
	for <lists+linux-man@lfdr.de>; Mon, 13 Mar 2023 02:43:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229534AbjCMBnG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Mar 2023 21:43:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229561AbjCMBnF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Mar 2023 21:43:05 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCB366E8A
        for <linux-man@vger.kernel.org>; Sun, 12 Mar 2023 18:43:02 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id j19-20020a05600c1c1300b003e9b564fae9so9850855wms.2
        for <linux-man@vger.kernel.org>; Sun, 12 Mar 2023 18:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678671781;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fVsS8LBYLy+diFoKz5auFgMpIiCDV51Gf0r1HVThvjo=;
        b=jo6LPEXSsl/93knDs4xa+eXy940StadI/vk2EuS5labtlj8exbh0UImgceyE9rArRq
         0ctZ37UDKlbyBjRL1uUVatUWLhTmEPWlA8P2aW1YHjWT02WOeaWQQ7VwwdNRApB6rFMY
         GgfGXBL/ni3pbFifH0KJ3NwiEDJKYUplQRhnID9kNlX03mZ8YNDMpLlPIBFpvBDzKhYL
         mdm94cSxisyeC0bU+qzgCWH0Bp7J2R2ygt6KIpdgsBmT0ouPoqaZUNqW9VBQkEInngFY
         QJvXG9WeFMS8tY40S5X1ZlHh7l4lhw7JIMNiTQzLGbB/FOtHWIIhdhoqASmt7M/q7TgG
         2iIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678671781;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fVsS8LBYLy+diFoKz5auFgMpIiCDV51Gf0r1HVThvjo=;
        b=zVwlvGypVy1gi2Ti8bs9F3Mz9deKRKfJixZUnxonTAH/l6WDuWZhyrjzmxokxW6LJ3
         3BrrPyExWPqdc9A9amRdihss72K/QmIqPogjE8CUf8VcGW6gq32uggdvzCw4gg0dAeqj
         fM2fFXGwAzItJ7cd7MK/e4ErkYW6ZYvDxnopRy2IeHC+bKg0wbemg/UYHKXnEVeh6IqA
         EgJyIdXeB63Zu1m5drcwOBi41Io2Kcz29T3iYAmPjUI6MPztkB1Pk/UOY2BSNRp/aOrB
         OpocWdB8XtOu4JS1d8qTmLOaNg7uAiCKhhJDBaZqNMbsgMZuEYqRmEQoo0UO7UHMIPu2
         ysmQ==
X-Gm-Message-State: AO0yUKWSM2m4QFNs/frm795eGEwQZY3PsHpFbRhgQeODwO6Rq2vhPzv3
        GBGW+XubmG7DntWokTH89E5CDDtmBzM=
X-Google-Smtp-Source: AK7set9D3rtAcHkqvOi5FihE0lWrpBvuR+Nq/obEnt/nu/z4T1kJJ9X3NoCwVtpkXQjxOeta1ZtRlg==
X-Received: by 2002:a1c:f213:0:b0:3ea:d611:f8 with SMTP id s19-20020a1cf213000000b003ead61100f8mr10073687wmc.38.1678671781123;
        Sun, 12 Mar 2023 18:43:01 -0700 (PDT)
Received: from dj3ntoo (222.sub-72-110-0.myvzw.com. [72.110.0.222])
        by smtp.gmail.com with ESMTPSA id i2-20020a05600c290200b003ed1fa34bd3sm4486488wmd.13.2023.03.12.18.42.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 18:43:00 -0700 (PDT)
Date:   Sun, 12 Mar 2023 20:42:55 -0500
From:   Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Matt Jolly <Matt.Jolly@footclan.ninja>, linux-man@vger.kernel.org,
        Brian Inglis <Brian.Inglis@Shaw.ca>
Subject: Re: Revert "Many Pages: Remove references to C89"
Message-ID: <ZA5/n8Ix+eCYnNgM@dj3ntoo>
Mail-Followup-To: Alejandro Colomar <alx.manpages@gmail.com>,
        Matt Jolly <Matt.Jolly@footclan.ninja>, linux-man@vger.kernel.org,
        Brian Inglis <Brian.Inglis@Shaw.ca>
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com>
 <ZAq5gg+aQB5TrDQ3@dj3ntoo>
 <f5aac742-4417-fced-343d-002117d629f1@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2pg7o5GhrgG0eHqb"
Content-Disposition: inline
In-Reply-To: <f5aac742-4417-fced-343d-002117d629f1@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2pg7o5GhrgG0eHqb
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Mar 10, 2023 at 14:29:24 +0100, Alejandro Colomar wrote:

=2E.. snip ...

> >> The main problem was that the existing info about C89 was not consiste=
nt.
> >> Some pages declared APIs being standard since C89, while others didn't.
> >> Incorrect info isn't much better than no info.
> >>
> >=20
> > This is something that can (and should) be fixed then, instead of
> > blindly dropping all references to C89, no?
>=20
> We decided back in 2020 that it wasn't worth the extra effort to
> check C89.

=2E.. snip ...

> But there are many standard.  Who decides which to mention and which
> not to mention?  How about POSIX.1=E2=80=901988, POSIX.1=E2=80=901990, and
> POSIX.1=E2=80=901996?
>=20
> There are still projects out there that care about POSIX.1=E2=80=901996, =
and
> that's not compelling enough for me to do the extra work of searching
> if something happens to be supported by it.  I will just state
> POSIX.1-2001, which is the oldest one I care about, and live with it.
>=20
> In fact, some pages documented POSIX.1=E2=80=901996, and I removed any me=
ntions
> to it in the same commit that removed mentions to C89, and even forgot
> to mention it in the commit message.
>=20

I'm neutral on removing POSIX.1-1996 if it was barely mentioned to begin
with (a search on patch found just 2 instances of "1996") which is not
the case for C89.

>=20
> >> I'd like to really understand the need for C89 in 2023.
> >>
> >=20
> > Some projects might like C89 and there's not much that can be done on
> > that front without the maintainers having a change of heart...
>=20
> If you really want C89, I suggest (as I did in the commit message) that
> you read the C89 Standard itself, which will be much more precise than
> the Linux man-pages have ever been or will ever be.
>=20
> However, I suggest you change your heart, and consider C99, since that's
> the future (or the past, I should say).  I would at least ask that you
> show _proof_ that you _need_ C89, before I consider spending some extra
> time in documenting C89 in the man pages.
>=20

I think you misunderstood what I meant here. I've got nothing against
using current versions of the language. Perhaps that was not clear
enough in my message.

> Especially, when you can just download a plain text version of the C89
> Standard, and grep(1) for the function name you're interested in:
>=20
> <https://port70.net/~nsz/c/c89/c89-draft.txt>
>=20
> I suggest you download that file, and use a function like this:
>=20
> $ stdc89() { grep "[[:alpha:]] \**\b$1([[:alnum:]*,. ]*);" /path/to/c89-d=
raft.txt; }
> $ stdc89 printf
>          int printf(const char *format, ...);
>          int printf(const char *format, ...);
>=20

I gave this a quick spin and it seems to work decently well. So thanks
for that. It's still not quite as nice as having C89 mentioned in
STANDARDS, and couldn't this be leveraged to fix up the inconsistencies
you mentioned earlier?

>=20
> >=20
> > Personally, I see this more as an issue of manpages inappropriately
> > editorializing. Mentioning in DESCRIPTION of gets(3) to "Never use this
> > function" is perfectly fine. In fact, I applaud that it's emphasized
> > before even getting into what the function does.
> >=20
> > From the original commit message:
> >=20
> >> Let's move forward, so readers get the intended notice that C89 is not=
 a
> >> useful version of C.
> >=20
> > This is incorrect. I can write useful code, even in C89.
> >=20
> > More importantly, I find it to be an inappropriate attitude for a manual
> > to take.
>=20
> I admit some editorializing.  I think there needs to be some.  Otherwise,
> there will always be some projects that request support for their
> favorite standard.  We're close to the point where C89 becomes irrelevant.
> I admit we're not yet there, but I'm not sure if it's because it's really
> needed, or because some projects blindly stuck to it for fear of the
> unknown.  I believe it's the latter, and would like to ask you to try C99,
> or show some proof that you still need C89 for some reasons that are
> different from "I like it".  Please understand that I'm not going to
> spend my time on documenting POSIX.1-1988 or even K&R C just because
> some project likes it (there are still projects that use K&R functions).
>=20
> However, if you show me that some system can't possibly have C99 in any
> form, because there's no C99-compatible compiler or libc that runs on
> that system, I would reconsider reverting the patch.
>=20

I appreciate the honesty WRT admitting to editorializing. Even if we
disagree on it here.

"Usefulness" seems to be a hard sell for you, but perhaps you would
reconsider it based on the historical relevance of C89? It was, after
all, the first proper standard of the C language. If you don't want to
promote C89 by having it mentioned alongside the others, perhaps you'd
be open to the idea of adding a historical note? Saying that C89 is
obsolete in the note would be acceptable IMO, but not having any mention
of C89 at all makes the manpages feel incomplete. Others have shared
this sentiment when chatting with them online.

There is also somewhat of a precedent of such a line being included in
STANDARDS. For example, the following excerpts from gets(3) and
printf(3), respectively:

> LSB deprecates gets().  POSIX.1-2008 marks gets() obsolescent.
> ISO C11 removes the specification of gets() from the C language,
> and since version 2.16, glibc header files don't expose the
> function declaration if the _ISOC11_SOURCE feature test macro is
> defined.

> The dprintf() and vdprintf() functions were originally GNU
> extensions that were later standardized in POSIX.1-2008.

- Oskari

--2pg7o5GhrgG0eHqb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQfOU+JeXjo4uxN6vCp8he9GGIfEQUCZA5/mQAKCRCp8he9GGIf
EVXUAQC2B8P6a/0w1U6qHUqOluAawTOyvlR1g7vl7w6DegJTrAD+LbCCV5nQ11AO
fTr69G2qPzyDz3KOwl1krbPtkL//Ugk=
=kYcJ
-----END PGP SIGNATURE-----

--2pg7o5GhrgG0eHqb--
