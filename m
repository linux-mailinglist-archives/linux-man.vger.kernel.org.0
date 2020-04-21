Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E99621B250D
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2020 13:26:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726403AbgDUL0Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Apr 2020 07:26:25 -0400
Received: from mx2.mailbox.org ([80.241.60.215]:52973 "EHLO mx2.mailbox.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726018AbgDUL0Y (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 21 Apr 2020 07:26:24 -0400
X-Greylist: delayed 489 seconds by postgrey-1.27 at vger.kernel.org; Tue, 21 Apr 2020 07:26:22 EDT
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:105:465:1:2:0])
        (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
        (No client certificate requested)
        by mx2.mailbox.org (Postfix) with ESMTPS id E0D7FA0A13;
        Tue, 21 Apr 2020 13:18:12 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
        by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de [80.241.56.122]) (amavisd-new, port 10030)
        with ESMTP id anRvB6c9Ot74; Tue, 21 Apr 2020 13:18:08 +0200 (CEST)
Subject: Re: Fwd: Re: Errors in man pages, here: charmap(5): Content
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
References: <20200420193022.GB19913@Debian-50-lenny-64-minimal>
From:   "Dr. Tobias Quathamer" <toddy@debian.org>
Autocrypt: addr=toddy@debian.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <ccb34948-f462-f100-9997-d91de069d6c2@debian.org>
Date:   Tue, 21 Apr 2020 13:18:04 +0200
MIME-Version: 1.0
In-Reply-To: <20200420193022.GB19913@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="irff5tt7G6r8Xq6fJurYsq9cTGP8xW3nk"
X-Rspamd-Queue-Id: 6A3A81739
X-Rspamd-Score: -4.33 / 15.00 / 15.00
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--irff5tt7G6r8Xq6fJurYsq9cTGP8xW3nk
Content-Type: multipart/mixed; boundary="lAaVojVWiw0hs5jMYH2W1uZU1IUfnBCR8";
 protected-headers="v1"
From: "Dr. Tobias Quathamer" <toddy@debian.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mtk.manpages@gmail.com, linux-man@vger.kernel.org
Message-ID: <ccb34948-f462-f100-9997-d91de069d6c2@debian.org>
Subject: Re: Fwd: Re: Errors in man pages, here: charmap(5): Content
References: <20200420193022.GB19913@Debian-50-lenny-64-minimal>
In-Reply-To: <20200420193022.GB19913@Debian-50-lenny-64-minimal>

--lAaVojVWiw0hs5jMYH2W1uZU1IUfnBCR8
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Am 20.04.20 um 21:30 schrieb Helge Kreutzmann:
> Hello Tobias,
> according to "git blame" you added the FIXME (or moved it, then it
> would be from Martin) in 2014.=20
>=20
> Can you say something for this FIXME (see below)?
>>> **
>>>
>>> UTF-8 in Debian Squeeze:
>>>
>>> "is followed by the maximum number of bytes for a character.  The def=
ault "
>>> "value is 1."
>>
>> I don't understand this report. Please elaborate.

Hi,

sorry, I don't know what this FIXME is about. I did not add it, it was
part of the initial commit to git of the translation back in 2012.
Unfortunately, I have no idea what would need to be fixed here. Maybe
this bug report should be closed.

Regards,
Tobias


--lAaVojVWiw0hs5jMYH2W1uZU1IUfnBCR8--

--irff5tt7G6r8Xq6fJurYsq9cTGP8xW3nk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE0cuPObxd7STF0seMEwLx8Dbr6xkFAl6e1m8ACgkQEwLx8Dbr
6xn2ww/9Ew3vurjAdUvE+S8XPlwu8IRc7ipDTLh8OFV0t9Yl+OWcKEgtjPsCuean
zI655RyTVcetfq/x6ZfZC8NgmBCojoiOaw1XfS/rgqzf7GrO46LlojpGvzPMwC9q
yE7lQitEiY7eHADGSGQSTbysDiEFBqGez2j+jAMCZdwwVoEinQP/9srHXI7H5jVj
rW+HAAVndtnIwEbI5isV/HwyTGb6cBZ6r8qWuGpqk+CXVqoDV9IctTP/H78mrvDA
i7c0zBFqzv8dmpd+JCdrtpjhw/JmKLIh+kMjrYccDhAtzFSETNILV+SG7RbarE8U
V1K0VT3f+qFQx0tEYv4toNMM1EEn5E9mqCf3UQmce9HdH+dfnBerFpdzfNTMxCV7
xd3I1waF02yMh0IhXZT6x7WjXMoWolArAlpKJdkuS+It7CbdsIgzTL3ayOimCNyb
47FWSOkmSED++GvWgW2TBSicTpAf3KUdDnZ+0cM6qUp86DTxWaxUNp9oWyd3lKzH
L/07/CRNy71LAztil4pMaCgE25qhkyB4JDG/jIMHLnAiqRJy5UzJdr9UO4MRrIQD
794bs0wFgFbTC4K4TQhWYl6f22wxOwt8dIHb3IiovGhxmamxiLXDaAhnqPTfhMu6
mt6XFNwmXSSvUDCrU0OIPcqeHTl1ln8uQMFu4S4jSu8ANLDMIkk=
=LHK1
-----END PGP SIGNATURE-----

--irff5tt7G6r8Xq6fJurYsq9cTGP8xW3nk--
