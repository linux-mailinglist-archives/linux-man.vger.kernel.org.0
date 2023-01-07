Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1AB2660DB1
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 11:17:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229544AbjAGKR5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 05:17:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbjAGKR4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 05:17:56 -0500
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61EA87FEEA
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 02:17:55 -0800 (PST)
Received: by mail-ot1-x32e.google.com with SMTP id x44-20020a05683040ac00b006707c74330eso2303957ott.10
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 02:17:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fHHyyGSUfYEe2mgs502dZG6ffpKT+PzrXaBXlUBZC5c=;
        b=gXBryncbKFdVw+A87bGCTeX435j0GMsPBh06gyyFMNR/VTOzHYt5eBnJwl3FqZLlOR
         XVixtcuS2jQwovcGhzAM5O2pYN3oBLQUxNXi5H9DL+fIg1xRx+QsxSriEeexW03BfUGD
         95q7rP32OGtVRKU10nKyrYCgzl1igdvVI7h+Cweyl1H9k6Oamk8uqV54dJAdf4dd2R3Z
         KGu/0IOFgzG3kamimJwO3JV/Oc1fnqetKbWkK+CwHf3g3a9ICiGv4iHfcsohEa5IECLZ
         B4jF/aZABrjrGTw44Y/cejWAsKkUAECl9u1w+nzmIsCY8fvjacngO9vBHOp3F63IV/wd
         jXcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fHHyyGSUfYEe2mgs502dZG6ffpKT+PzrXaBXlUBZC5c=;
        b=OmTojcjoQRO4zoCcbBsYzLDF+KwOVM8GHIRRazL3RyOk3gMbbmjpzqEVKnrUe+F1xj
         0JOsHuWg90ngfhZebKp6TBbZXlJSnXmlZ/H1sf7KoJE4LOevta80jbSVbCEmunxFBvZn
         3lGzAQyhLWcgspUPV4fz5ScelOJFJgjkt0mTprr694RLmAfqgCSJgl9AmQ2Br+S2YKxv
         aPJNknCGO2EL69g90URbfKX+4THW6yAfmVEF6HLR3/l+5gE8Yzi1yjs1ioxKBFGgVvz6
         Ap5vygRptfstW7Ny+bzcsOMudmu0KUEbJRsZM1qXSLF/S/a7bFwDNZ/3idysi4HNir3u
         S5/A==
X-Gm-Message-State: AFqh2krfmEwR9UJb4wP23yaY05u5zUEYCFNxIpSDOOCJzRFgD/2KP2rQ
        bUUQs2YbF7AbL8ZGq6ZpMibOVofsQag=
X-Google-Smtp-Source: AMrXdXukMZoZy5r2l1T2T6pWPgyftpRzi586Z1mG3YkVtTVdTGNYnBCbzm1o1C/M/+QBHVFIFwpepA==
X-Received: by 2002:a9d:6317:0:b0:66e:810a:5d45 with SMTP id q23-20020a9d6317000000b0066e810a5d45mr30853183otk.4.1673086674716;
        Sat, 07 Jan 2023 02:17:54 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id cp17-20020a056830661100b00670763270fcsm1680573otb.71.2023.01.07.02.17.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jan 2023 02:17:54 -0800 (PST)
Date:   Sat, 7 Jan 2023 04:17:52 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: Manual page sections shouting
Message-ID: <20230107101752.p66xbjbojut4azes@illithid>
References: <4ab3e3aa-9b05-765a-ba44-06bf39994d81@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="7krsuf5knpjmhb2z"
Content-Disposition: inline
In-Reply-To: <4ab3e3aa-9b05-765a-ba44-06bf39994d81@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--7krsuf5knpjmhb2z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex!

At 2023-01-07T01:25:50+0100, Alejandro Colomar wrote:
> I agree with you that I'd prefer that section headings didn't shout at
> the reader.  However, I've waited to do such a change, because I'm not
> sure about it.  There's a good thing about having them in uppercase:
> references to them are also in uppercase, and that makes it easy to
> grep for them (I need to do that from time to time).
>=20
> Do you have any opinion on that?

Yes.  :)  Section headings are still in sentence case (capitalize first
letter) or title case (capitalize each word except for a fuzzy list of
exceptions even native English speakers struggle to master).

Whether sentence or title case is used is a style choice that I don't
have a prescription for.  In the groff man pages, after some discussion
on the list we migrated to sentence case.  As I recall there was at
least one advocate for title case for section headings proper (`SH`) and
sentence case for subsection headings (`SS`).

The distinction is almost invisible for standard section headings
anyway; the only common multi-word heading is "See also"; that one is
practically never cross referenced, and it's almost always easier to
find by just mashing Shift+G in the pager.

If you type "-i" in less(1), this will toggle case-insensitive pattern
matching.  You can then search for the section name with a leading
capital letter; that is usually reliable for detecting the headings, or
cross references to them.

> Also, when referring to the section within a page, would you refer in
> lowercase, or the first-upper-then-lower?  Using uppercase is
> unambiguous,

That's true, albeit shouty.

> while using lowercase might need "section" next to the section name.

In the groff man pages I have adopted the practice of always preceding
the cross reference with "section" or "subsection" as appropriate, and
quoting it with typographer's quotation marks (\(lq and \(rq).

I go to the trouble of distinguishing sections from subsections because
they are by default indented differently, and that gives people,
especially those with a little facility with regular expressions,
another tool with which to locate the relevant material.

For instance, the following rules of thumb are crude but effective:

Find a section named "Options" in a page:

/^Options

Find a subsection named "History" in a page:

/^   History

(where 3 spaces lie between ^ and "History").

_If_ we added yet another groff extension to man(7), analogous to
mdoc(7)'s `Sx`, we could support hyperlinks directly to man page
sections and subsections.  (On terminals, we'd still need a way to mark
locations in the page text as link targets, and for it to be practically
useful, pagers would have to grow more features.  Given the amount of
idiocy, particularly from people who think that a URL in a terminal
window is a security risk in some way that a URL on a web page isn't,
that Egmont Koblinger has had to put up with in promulgating OSC 8, I
would not count on the infrastructure for this materializing soon.)  But
for PDF all the pieces are in place; they just need some glue in the
groff man(7) package.

> Maybe it's not so easy to do the change.

Changing the lettercase of the (sub)section headings in groff's ~60 man
pages was not difficult.  "sed -i" was equal to the task.  :)

Regards,
Branden

--7krsuf5knpjmhb2z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO5RscACgkQ0Z6cfXEm
bc4vcQ/+MqPlk8w04rt62V+4szhHSZTfuXv6K50qqUUEAGx87yzrowqC3+Q5c9sf
E+bG20Ds5ehREvXSE6zhqGk2LgVVZJhKB9ZjdxwtuZfMBCxkshoZCDrgYXiaCmax
rBN41WJeKOstb0S6U7FELvXslp/lf43h94Y6U2KHHaQ5oG9H/UgbZgXQ2zjWs1RP
GPhwwGhMRJRjU1L5L7pX6cb5M75ju1wWsPaHjuvDdF9Gh+/iUZNvp7PGw9a8NYzx
0t2QQn1MZ7wwIDuyI3EAUl8VF5w0wcdsh+JgyH9rHUjyC5MNHt3YWkjIk2SPN8Jr
lBgYH/PW0hOJ6UyS6vlgzROpIksmdJoxgsdC0yiiNPdLVyuEfKFXoH9uIr1Gk3pP
n+sgAa0SZmWDvu383MAr7xCMyltpI7IeKbuggBp0yrfJ9w2MdcNP6dwptuq73v2f
axmWous9cKAtAXpSzvTWoBPh6Cbew05V1VRBkR7j4rSkQehQPDFr5Lb+BKPnb82P
bCg7Xe9n3LhJvbzD21DpScxItx8XCQiFmSyyq11TAFx2OnfBxvMGh7nG6CmoGteI
GbmttvV/g8SV/yIjagSP0yYEwFR6vutF775Yjv8evJReU5FdRvkhktuWjyMZk1BR
yh7I7q11DuInzkfqnsY4ohkLX82gArR0VJ3ueiJQFTgSmNXSgjY=
=XKJB
-----END PGP SIGNATURE-----

--7krsuf5knpjmhb2z--
