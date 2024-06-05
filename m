Return-Path: <linux-man+bounces-1031-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8198FD126
	for <lists+linux-man@lfdr.de>; Wed,  5 Jun 2024 16:51:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E29F285348
	for <lists+linux-man@lfdr.de>; Wed,  5 Jun 2024 14:51:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 130E32746A;
	Wed,  5 Jun 2024 14:51:54 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp123.iad3b.emailsrvr.com (smtp123.iad3b.emailsrvr.com [146.20.161.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA26519D8A3
	for <linux-man@vger.kernel.org>; Wed,  5 Jun 2024 14:51:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=146.20.161.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717599113; cv=none; b=oKefXYQon279uXnXW04wC7Nx14tN5M7tJg2oqq+7BAs0L8qBYXnUrZe7kC3d0SNOmCIpau+7U2FNhvXE/nOZPebzCbaJH4iZjqKMtVRGS3ufGVUyxDz+HXQTAOewJtKtAY+5cWoD5NLsdgKbGnYH9fiQSUTi4/B+XZlPLoYJhCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717599113; c=relaxed/simple;
	bh=s6ednZTlNqBeONMGorhVf1XIpm0q+UsCdp3OgcGpDl0=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=VyuYwWpQoW8BQD9+251mNZWJ5Jxg+3n91aqEnWtuOHxioeOrOeE5s/mOLCkAsUsg6OHgH5IAzWZob3+e/CqLUdFiQYUwMMe6bmIy00ai+w75aTV/GPOdjNBXbc1qIQRxTQRd+hKl8iaFxuNtv01DGyO7iMNvjnlXRKWcado0P9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=opengroup.org; spf=pass smtp.mailfrom=opengroup.org; arc=none smtp.client-ip=146.20.161.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=opengroup.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=opengroup.org
X-Auth-ID: a.josey@mail.opengroup.org
Received: by smtp24.relay.iad3b.emailsrvr.com (Authenticated sender: a.josey-AT-mail.opengroup.org) with ESMTPSA id 252F5400C8;
	Wed,  5 Jun 2024 09:35:18 -0400 (EDT)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.8\))
Subject: Re: POSIX manual pages
From: Andrew Josey <ajosey@opengroup.org>
In-Reply-To: <3ct4esw4xculwxyyohfuboecqfleateyz4qib6fn6ehhxyphes@3aimq4vlwxyf>
Date: Wed, 5 Jun 2024 14:35:16 +0100
Cc: Geoff Clare <gwc@opengroup.org>,
 linux-man <linux-man@vger.kernel.org>,
 Eric Blake <eblake@redhat.com>,
 Brian Inglis <Brian.Inglis@shaw.ca>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <04801FEA-3560-4BA5-93EF-76E503032C40@opengroup.org>
References: <25806cfb-8845-e4d4-6c18-6b02cb8c92ab@kernel.org>
 <0ABD21B4-4E03-4EE0-9F6D-D04CDDF00260@opengroup.org>
 <ab297c03-412d-45df-8d7b-6f5223327694@kernel.org>
 <3ct4esw4xculwxyyohfuboecqfleateyz4qib6fn6ehhxyphes@3aimq4vlwxyf>
To: Alejandro Colomar <alx@kernel.org>
X-Mailer: Apple Mail (2.3696.120.41.1.8)
X-Classification-ID: 0e7e724b-ac65-44a4-a929-cef4ab05a57d-1-1

hi Alejandro


Unfortunately, we have no plans to move to a public git repository for =
managing the development of the standard.

regards
Andrew



> On 1 Jun 2024, at 18:54, Alejandro Colomar <alx@kernel.org> wrote:
>=20
> Hi Andrew,
>=20
> Do you have any updates about this?
>=20
> On Wed, Sep 13, 2023 at 06:15:09PM GMT, Alejandro Colomar wrote:
>> Hi Andrew,
>>=20
>> [I reordered your answer for my response.]
>>=20
>> On 2023-09-05 14:34, Andrew Josey wrote:
>>>=20
>>> hi Alejandro
>>>=20
>>> Apologies for the delay.
>>=20
>> NP
>>=20
>>>=20
>>> Are you in touch with Michael Kerrisk?
>>=20
>> Nope.
>>=20
>>> It also appeared in discussions with Michael in 2020, that he had a =
way to convert the source format to man page format.
>>=20
>> Yep, this is probably "the way":
>>=20
>> =
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages-posix.git/tree/po=
six.py>
>>=20
>>> In the past we have worked with him and made a permissions grant - =
which outlines the terms we are able to grant =E2=80=94 these are =
limited
>>> by the copyright holders.=20
>>=20
>> I understand.  Would it be possible to suggest the copyright holders =
opening a
>> little bit more?  The C++ standard seems to be more open (it has a =
public git
>> repository with the source of the drafts) [1].  Maybe POSIX could do =
something
>> similar?    It would make contributions to the man-pages-posix =
project easier,
>> as contributors would be able to test the script with the original =
sources;
>> instead of just blindly trying something, and asking the maintainer =
to try it
>> with the secret sources.
>=20
> Just to remind of what I'm asking:
>=20
> -  A publicly accessible git repository containing (at least) the =
drafts
>   of the POSIX standard roff(7) sources, similar to
>   <https://github.com/cplusplus/draft> (which is not roff(7); I just
>   mean similar in that it's publicly available, and it contains ISO
>   standard draft sources).
>=20
> I would include that repository as a git submodule of
> man-pages-posix.git, where I would maintain the translation script for
> building the manual pages.
>=20
> Have a lovely day!
> Alex
>=20
>>=20
>> [1]:  <https://github.com/cplusplus/draft>
>>=20
>>=20
>> Cheers,
>>=20
>> Alex
>>=20
>> --=20
>> <http://www.alejandro-colomar.es/>
>> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>>=20
>=20
>=20
>=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>

--------
Andrew Josey                =20
VP, Standards & Certification,	The Open Group         =20
Email: a.josey@opengroup.org
Apex Plaza,Forbury Road,Reading,Berks. RG1 1AX,UK.

The Open Group Certifications, see =
https://www.opengroup.org/certifications

ArchiMate, FACE, FACE logo, Future Airborne Capability Environment, =
Making Standards Work, Open O logo, Open O and Check certification logo, =
OSDU, Platform 3.0, The Open Group, TOGAF, UNIX, UNIXWARE, and X logo =
are registered trademarks and Boundaryless Information Flow, Build with =
Integrity Buy with Confidence, Commercial Aviation Reference =
Architecture, Dependability Through Assuredness, Digital Practitioner =
Body of Knowledge, DPBoK, EMMM, FHIM Profile Builder, FHIM logo, FPB, =
IT4IT, IT4IT logo, O-AA, O-DEF, O-HERA, O-PAS, O-TTPS, Open Agile =
Architecture, Open FAIR, Open Footprint, Open Process Automation, Open =
Subsurface Data Universe, Open Trusted Technology Provider, Sensor =
Integration Simplified, SOSA, and SOSA logo are trademarks of The Open =
Group.


