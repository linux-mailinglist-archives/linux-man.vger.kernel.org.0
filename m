Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94B5C64A017
	for <lists+linux-man@lfdr.de>; Mon, 12 Dec 2022 14:20:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231591AbiLLNUD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Dec 2022 08:20:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232574AbiLLNTm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Dec 2022 08:19:42 -0500
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C38B640C
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 05:19:25 -0800 (PST)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-142b72a728fso8267175fac.9
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 05:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=p/3GFV6pa2xRUkvyRHztxabHFlyQySSqqmESsvjKna4=;
        b=iomQFNOPxZxAANzd7Jk5agST+DF8zxqZPcTsVA5VD6x6ctJVx5w/Vfcznk6hL16/2M
         iPGblrzYGoxK2wXjKqoFcxRii3XKuvXOqaF2F5dO3stgsnxES1DT3c3rbNMzYfGnY5fb
         pGBQqpl7HG8a3yEZa0W5ugR0kUs5bLHpzyVUcbRbXFrejs6YsPVX9W/O2UXLLXW91kgq
         Fxze9S5i/ixb19JB8U2HP/3hFKjMfCHnfEwkNCAwnj7A1AsucMGOMTjb6f0cxqRJbo3L
         p09mUPbzRlu6UWAq5+nIdrLDSzCbAylU/y7d7WptSrnNjx1OoR+qrdIJai6rPBce6kuR
         Pkew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p/3GFV6pa2xRUkvyRHztxabHFlyQySSqqmESsvjKna4=;
        b=Tw8dhnClxRzUKl4NRCQql0AlB7WilkG1LNRAomxheaIiZonvkEVWpE2d262WpNv9S4
         BYuIn/xzXiiiHS0prJ7J03FtNjcUCsRHl63kNfVdcQnEnbpUyzMdcyhNffsR/gKMfoOo
         +Jd2uVQYtAKxjYIM5goZ410LbP6Pw3XbMEV3u+N03ir0zM/T941+AUqDERyH+ID6OYLi
         pGwM3Nj/a73c+0y04B/K2G+GbOqcpV0DxJh0PZ2B646NVFA8QwikSHjL2Idkt0yzkDE2
         7Ix8DkbELNqylGyVYaEgWPJRMmLx3Ln/gB8ewA/KXhLkmQo+BLqfPj85CLbNSATMTetM
         rCtg==
X-Gm-Message-State: ANoB5pnHBr9PIMQnVaLoPLR2KHRQxaPVl9LNc5XzT1P8ytPS1oqgiNf9
        CZCOd7mhrduLQT4kOHGgANeKRbLWb4Qq2g==
X-Google-Smtp-Source: AA0mqf6jkJkqiZayyhBl2cEcX5m/Go/05kzByE9YKH7qGJFucIlXmEHP5oxSy5cfds3LTGFCE027eA==
X-Received: by 2002:a05:6870:a786:b0:13b:7f47:d78b with SMTP id x6-20020a056870a78600b0013b7f47d78bmr8347193oao.9.1670851164574;
        Mon, 12 Dec 2022 05:19:24 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id u6-20020a056871058600b0013b92b3ac64sm4915663oan.3.2022.12.12.05.19.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Dec 2022 05:19:24 -0800 (PST)
Date:   Mon, 12 Dec 2022 07:19:22 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Colin Watson <cjwatson@debian.org>,
        Ingo Schwarze <schwarze@usta.de>,
        linux-man <linux-man@vger.kernel.org>, groff@gnu.org,
        Michael Haardt <michael@moria.de>,
        Andries Brouwer <Andries.Brouwer@cwi.nl>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        "Andries E. Brouwer" <aeb@cwi.nl>
Subject: Re: Ping^1: Chapters of the manual (was: Bug#1018737:
 /usr/bin/rst2man: rst2man: .TH 5th field shouldn't be empty)
Message-ID: <20221212131922.e37ltilm6qv4invd@illithid>
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <a7b8c6b3-a8e8-6ab7-6cf4-118446849a9c@gmail.com>
 <dca0e251-7481-7f1e-4077-0ddee070a357@gmail.com>
 <20220906204245.hzhq2s7yha6zzgrh@illithid>
 <30e80fe0-f0ce-d6cd-ee40-28692e5a5f82@gmail.com>
 <5c1e8620-e4ff-c79a-1d4e-11f797276726@gmail.com>
 <20221116234049.GA1229865@if>
 <f306a83a-306d-e3d0-5d25-bf07da3da59f@gmail.com>
 <c23b1a4f-1269-55a6-53ac-abbd2cff5786@gmail.com>
 <b13137bb-8eb9-dc69-da3b-191eda8e5642@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="eny3zk6kaxd4tcre"
Content-Disposition: inline
In-Reply-To: <b13137bb-8eb9-dc69-da3b-191eda8e5642@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--eny3zk6kaxd4tcre
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2022-12-11T17:40:10+0100, Alejandro Colomar wrote:
> This is a gentle ping about my terminological reforms about manual
> page chapters.
[...]
> Hi Colin, Ingo, and Branden,
> On 11/17/22 01:06, G. Branden Robinson wrote:
>  > I think the adoption of the term (sub)chapter has a potential
>  > benefit in that it removes a terminological collision with
>  > (sub)sections as subdivisions of individual man pages (man: SH, SS;
>  > mdoc: Sh, Ss).

I reiterate that using the word "section" to refer to two distinct
concepts in the same domain of discussion is helpful to no one.

>  > If this terminological reform is adopted, I think it should be done
>  > across all of (1) Linux man-pages, (2) groff, (3) mandoc, and (4)
>  > man-db.  If we can't speak with one voice on this then I think it's
>  > better not to undertake that reform at all, to avoid frustrating
>  > the discoverabilty of man pages.

I'd still like to hear from Colin and Ingo to see if they have any
ideas.  But the future doesn't look bright on this point.

>  > Possibly the biggest barrier to this is the mnemonic and
>  > documentation of the man(1) '-s' option.  In man-db man, '-C' and
>  > '-c' are both already in use.
>=20
> That can be documented as a historical detail in the documentation of
> the option itself, which makes sense, as to avoid programmers that
> have heard of sections to try to grep section and find nothing.

Right now we (I) have to explain this distinction in the groff_man(7)
page.[1]

Here's what it says (italics in original are lost in email).

    .TH topic section [footer-middle] [footer-inside] [header-middle]
        Determine the contents of the page header and footer.  roff
        systems refer to these collectively as "titles".  The subject of
        the man page is topic and the section of the manual to which it
        belongs is section.  This use of "section" has nothing to do
        with the section headings otherwise discussed in this page; it
        arises from the organizational scheme of printed and bound Unix
        manuals.  See man(1) for details on the section numbers and
        suffixes applicable to your system.  [...]

I don't know if anyone else bothers to explain this distinction.  There
is a lengthy, sad tradition of Unix experts keeping gates by maintaining
knowledge at the level of folklore rather than proper documentation,
despite the excellent precedents set by the Bell Labs CSRC and UCB CSRG.

Thus when implementors with imperfect knowledge come along later, their
mistaken grasp of history determines the "finger memory" of users for
decades afterward.

>  > Probably a good idea to loop Colin Watson in on this proposal of
>  > yours, which is strictly speaking severable from the below.
>=20
> Yes, especially since part of the discussion is in linux-man@ (I'm not
> sure if he reads it; I think not) and not in groff@ (which he reads,
> AFAIK).  So, I'll merge the 2 discussions about this by forwarding the
> 2 most interesting other emails below.
>=20
> So, does it make sense to all of us to start using the term chapter
> for divisions of the man-pages single volume, so that the manual pages
> in Linux are organized from now on in chapters 1 to 9 instead of
> sections 1 to 9?

The users appear to be speaking against it, on the rather pitiful
grounds of "finger memory".  I term this "pitiful" not as a knock on the
protestors--I have finger memory too--but on the situation causing it.
Once again we see how cramming everything into a minimal name space
causes problems.  (The usual grognard rebuttal to affording a more
capacious name space is to have one's interface do less, which is only
sometimes a wise prescription.[2])

But yeah, man-db man(1) has occupied a large number of positions in the
base-62 conventional single-character option name space.

Using '#' as an unused slot for a numeral and '$' as an unused slot for
a letter, I see:

# # # # # # # 7 # #
$ $ C D E $ $ H I $ K L M $ $ P $ R S T $ V W X $ Z
a $ c d e f $ $ i $ k l m $ $ p $ r s t u $ w $ $ $

[email about intro(3type) and Michael Haardt snipped; I have no useful
comment on it]

> On 11/17/22 00:40, Andries E. Brouwer wrote:
>  >> On 9/7/22 00:13, Alejandro Colomar wrote:
>  >>>>> I've seen sporadically references to the numbers as chapters,
>  >>>>> probably from when the manual was a proper book, but that term
>  >>>>> seems to have fallen in use.
>  >
>  > Unix Programmer's Manual (4.2 BSD) August, 1983
>  > Volume 1
>  > Chapter I: Commands: intro, adb, ...
>  > Chapter II: System calls: intro, accept, access, ...
>  > Chapter III: Subroutines: intro, abort, abs, ...
>  > Chapter IV: Special files: intro, acc, ...
>  > Chapter V: File formats and conventions: a.out, ...
>  > Chapter VI: Games: aardvark, adventure, ...
>  > Chapter VII: Macro packages and language conventions: intro, ascii, ...
>  > Chapter VIII: Maintenance commands and procedures: intro, ac, ...
>  >
>  > Seventh Edition, January, 1979
>  > Volume 2A
>  > 1 and 2: General Works
>  > 3 through 7: Getting Started
>  > 8 through 13: Document Preparation
>  > 14 through 18: Programming
>  >
>  > Volume 2B:
>  > 19 through 28: Supporting Tools and Languages
>  > 29 through 38: Implementation, Maintenance and Miscellaneous
>  > ...
>  >
>  > Volume 1 had chapters. The later volumes had numbered documents.

I have to admit that the thought of using Unix (Version 7) Programmer's
Manual Volume 1 editor Doug McIlroy as a bludgeon of authority with
which to beat the grognards at their own game is tempting.

But Doug's a benevolent soul, seems disinclined to see his CV employed
as weaponry, and we younglings, as gray-bearded as some of us have
become, have to cope with our own problems.

Nevertheless, the above knowledge is well worth keeping in mind and
having in reserve for quotation, as the quantity of ignorantly jerking
knees against any reform as radical and ahistorical is large.  (Just
don't expect to actually convince a disputant with facts; the bystanding
audience is typically more edified than those who have already committed
themselves to a position.[3])

The 4.2BSD provenance is particularly valuable, in that it illustrates
how the terminology was retained rather than thrown out as an ugly
"USG-ism" (or some other derogatory epithet) at the first opportunity.

> Thanks for the prompt reply!  'chapter' definitely makes more sense,
> at least considering the manual as a book.  Since it seems to have
> been in general use in the past, it's not so much of a breaking change
> to start using it now again.

Yeah, people will fight you on that even when you put unimpeachable
evidence of their incorrect characterization of history directly in
their faces.

There is a quote that is not famous enough to suit me.  The first three
sentences suffice, but it feels wrong to omit the remaining context.

"The whole modern world has divided itself into Conservatives and
Progressives.  The business of Progressives is to go on making mistakes.
The business of Conservatives is to prevent mistakes from being
corrected.  Even when the revolutionist might himself repent of his
revolution, the traditionalist is already defending it as part of his
tradition.  Thus we have two great types -- the advanced person who
rushes us into ruin, and the retrospective person who admires the ruins.
He admires them especially by moonlight, not to say moonshine.  Each new
blunder of the progressive or prig becomes instantly a legend of
immemorial antiquity for the snob.  This is called the balance, or
mutual check, in our Constitution." -- G. K. Chesterton

> So, to avoid ambiguity between section referring to a chapter or
> section referring to part of a page, I'll start using the term
> [sub]chapter consistently.
>=20
> With time, I expect to replace all occurrences of section that should
> be chapter in the man-pages.

I'm not a -1 on this but I'm not hopeful for its future.  I refuse to
veto it but I think is probably gentler to maintain apologies as shown
above in the description of the `TH` macro, which is aimed at man page
_writers_, than to explain the anti-mnemonic value of man(1)'s -[Ss]
flags, which are used by more numerous man page _readers_.

At the same time, I remain close to the fence because even man page
readers have to cope with both senses of the word "section" simply to
navigate within and among pages.

So you can count on me, like Stalin in August 1945, to join the war
against Japan only once the outcome is assured by my allies, so that I
can claim the right to participate at the postwar negotiating table.[4]

	This use of "section" has nothing to do with the section
	headings otherwise discussed in this page; it arises from the
	organizational scheme of printed and bound Unix manuals.

I imagine being able to deport that sentence from groff_man(7) and sigh.
South Sakhalin Island never looked so good.

Regards,
Branden

[1] Strictly, it should be in groff_mdoc(7) as well.  As I'm finally
    rewriting that page, maybe such a change will show up in time for
    groff 1.23.

[2] In principle, man(1)'s librarian and presentation functions could be
    decoupled; the former would deal only with parameters that locate a
    page (or list of pages) [much as "-aw" works today], while the
    latter would collect the results for passage as operands to a *roff
    formatter.  In working on groff, I have occasionally wished that
    man(1) had a single option that simply meant "pass the following
    argument to the formatter" (as GNU [gnt]roff's own "-P" option can
    be used to pass arguments to the output driver).  But a change like
    this might be so disruptive to user experience that the resulting
    resulting re=E4rchitected command would need to be called "man2" or
    something silly like that.[5]  If I were Colin I'm not sure I would
    be eager to face the howling cacophony of les doigt-m=E9moires.

[3] https://weeklysift.com/2022/06/27/the-january-6-hearings-are-accomplish=
ing-more-than-you-think/
[4] https://en.wikipedia.org/wiki/Soviet%E2%80%93Japanese_War
[5] I dedicate that dieresis to the editorial staff of the _New Yorker_.

--eny3zk6kaxd4tcre
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOXKlIACgkQ0Z6cfXEm
bc6TgRAAq/VemMlAdeAQsGNOwqUlz7LZrNT6b5ccBHP8RfCwTQYktdkMSPfh1nLZ
GUBZ/4DRm9YDEJYo6cB4E3XdKAOzwOH0rScve5onZYlPNy/Sc6aYnx4iSQ1qbpNz
t+GSdWq+HEH2Oct92xC7yspms3S2cSj5ZIH6FUf+u6ECalVPuqrNQu+jiWynQL5A
2Gev7rjuWZqvKQLEO/vcPHqmb5xnn4z5iO+sFWPxbzD1Tt4v/i3ukPq6PRQsQjKq
kYjYelyajBGvX7fdwVRpVfZehVOcAiKN/jhiGftm0Tyz/sV+I1BxnQZOdl0O86Av
KPXrSrwnpIVTctNay/sxeXnToCWyE8GzBT+sSX2SWVkrmG5BC+cbz8E7RbbYyqJ5
sppNUgIUxAUOwVW9k4XqF8p8/TvK+8r5jPIXTHjGb9RO7zfHvFsBim2TSQi4SkVY
FHcemrTxnJFgW8brnMBjO+w0r6Py3Gl812ohNOzf9N0ALtakNFm0R/Ukj6RlDw9+
TypVkNvYmzwmzLjO7T7SAnZOXUdkUe9wZUZ5s5XzLY9NmLKYItNpaadUYh/cmvdJ
PQSpsxgXdvQ/wzuHkov3h4hSa3fjuVrV0B75Gr3RROvrXMxENudyyoe3h/ELJDsV
CbxG1K2kOM+RmjpSDTXOuxxRxDNR4j2LtsSqYdgLLQwHsoM/rN0=
=ylEC
-----END PGP SIGNATURE-----

--eny3zk6kaxd4tcre--
