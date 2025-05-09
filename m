Return-Path: <linux-man+bounces-2886-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F00F3AB1731
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 16:20:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 177B34A00D4
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 14:19:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6414620F07B;
	Fri,  9 May 2025 14:18:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=xypron.glpk@gmx.de header.b="hU3GCUwR"
X-Original-To: linux-man@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57303219A71
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 14:18:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746800334; cv=none; b=Bk49AFyZIK+AHIoAdXLogGg+cp6kfuJAEkf1DGtr3/ODst5ZyLEY9cl6ToQYix65EkzzYAVFUMp5mSTtUsBpjXZWltnKHwfASD27afrbrfbCcV15cc0ty+LLogfs+zg5NCKYc2XjJ13/V4LOEkGvgwdtCm1RIS/jhAL0S008UG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746800334; c=relaxed/simple;
	bh=zyBzEL+z4yKVn+aZexs9OR9NpH+pekaz8qg5/BX3ODU=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=AIgOH0CR9K8kndJPwmhXw3o36xNTx/IfoquBWis1vLAsmnybQUTzwVtCKL3pL/ce88aG+g/i3WbMWy/OHzTee3OH2ddckkW4aFfa59nkEwRpNYO1dBU7bGOpOVebkC16ABwf2WIo9QK0zK4mYOuOiXCSy2EauwclXDfbYyZzYew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=xypron.glpk@gmx.de header.b=hU3GCUwR; arc=none smtp.client-ip=212.227.15.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1746800324; x=1747405124; i=xypron.glpk@gmx.de;
	bh=IVZ7eLz8+M/sAgCdxB+1NlQW89d4cC0UM0U01558/CQ=;
	h=X-UI-Sender-Class:Date:From:To:CC:Subject:In-Reply-To:References:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=hU3GCUwR/Q3ZAMyfHR1JipYzPj3VQMW1nSK5gs331IyYNBRl8U8umBVHuPn4XL/I
	 aNSgwUstwg8/wTVgNyyefYqIv1kg2QoAvUTsNV7vtT31On7L7OlCZg1xinvrJKIz3
	 T4emtYZ8k3jUPiu8dTi2ERMsYmIhvLniPoP+2WXNwdbf0MmgFJRA4JDFgcvctooak
	 bn0b9ZFoOuXHXGBNM85WplMLywEpQw0IB52zcTjWQA4z3AzIThzgrHIipzKDiPN5U
	 iWPVXzYUC7HdZ6dkIlONF7DVQljcmTlRREu7NFHg8654GTgmK94YQGtzZF4xRV2/a
	 3LkCxZLNEdnGZ3JucQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [127.0.0.1] ([61.8.146.81]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MZktZ-1uY8Lk2JTr-00WFny; Fri, 09
 May 2025 16:18:43 +0200
Date: Fri, 09 May 2025 16:16:59 +0200
From: Heinrich Schuchardt <xypron.glpk@gmx.de>
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
CC: Carlos O'Donell <carlos@redhat.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
User-Agent: Thunderbird for Android
In-Reply-To: <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
References: <cover.1739389071.git.amitpinhass@gmail.com> <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com> <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik> <20250212230210.3kkixsk7bi3cdc4d@illithid> <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn> <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv> <20250408124238.2gbis6jq5pdz7yoi@illithid> <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com> <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix> <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
Message-ID: <38C59C54-AB13-47B9-B10C-790EA3AC4C06@gmx.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:sUR+D3OEkHztb1w4V0frL+yziHZeLjuITasFQ+TUT1g51UP7VEv
 Ph+gJzI3s4WPynWPRZpwoiTtUvbbT3Wvx4+keHvSYc+dRIlvs1y0SgKB8TGx3Q/RyBVpcA0
 fBBVuJ+SIQ6g5sKkHj2IoPCTr23IixN/b1Q0W42u2cp1/pm0MttPt1693HyJ65UraEdtmPz
 +VTUrR3/PKnicoKHTQy8Q==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:LQVzUJsF200=;4VuoVWCEc0PP6fYTga3kWpnusDt
 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

Am 9=2E Mai 2025 14:54:31 MESZ schrieb Alejandro Colomar <alx@kernel=2Eorg>=
:
>Hi all,
>
>I've added to BCC everyone whose copyright notices have been removed
>(those that noted an email)=2E  The full thread for this discussion can b=
e
>found here:
><https://lore=2Ekernel=2Eorg/linux-man/jpin2dbnp5vpitnh7l4qmvkamzq3h3xljz=
sznrudgioox3nn72@57uybxbe3h4p/T/#u>
>
>Please let me know if it's okay to you to transform your copyright
>notices to make them uniform?  That is, do you approve
><https://git=2Ekernel=2Eorg/pub/scm/docs/man-pages/man-pages=2Egit/commit=
/?id=3D9f2986c34166085225bb5606ebfd4952054e1657>
>in what affects you?

Fine for me=2E

Best regards=20

Heinrich=20


>
>I've generated the BCC with
>
>	$ git show 9f2986c34166085225bb5606ebfd4952054e1657 -- man \
>	| grep '^-[^-]' \
>	| grep @ \
>	| grep -o '[^     ]*@[^ ]*' \
>	| sed 's/,//g' \
>	| sed 's/\=2E$//' \
>	| sed 's/=2E*(//' \
>	| sed 's/<//' \
>	| sed 's/>//' \
>	| sed 's/\=2E)//' \
>	| sed 's/)//' \
>	| sort \
>	| uniq \
>	| sed 's/^/Bcc: /';
>
>
>Have a lovely day!
>Alex
>
>On Tue, Apr 08, 2025 at 11:28:29PM +0200, Alejandro Colomar wrote:
>> Hi Carlos,
>>=20
>> On Tue, Apr 08, 2025 at 04:18:35PM -0400, Carlos O'Donell wrote:
>> > On 4/8/25 8:42 AM, G=2E Branden Robinson wrote:
>> > > Hi Alex,
>> > >=20
>> > > At 2025-04-08T01:05:02+0200, Alejandro Colomar wrote:
>> > > > On Thu, Feb 13, 2025 at 12:20:58AM +0100, Alejandro Colomar wrote=
:
>> > > > > On Wed, Feb 12, 2025 at 05:02:10PM -0600, G=2E Branden Robinson=
 wrote:
>> > > > > > If you do this, I suggest you replace these lines with someth=
ing
>> > > > > > like:
>> > > > > >=20
>> > > > > > =2E\" See the Git revision history at
>> > > > > > =2E\"   $URL
>> > > > > > =2E\" for records of changes and contributors to this file=2E
>> > > > >=20
>> > > > > Good idea=2E
>> > > >=20
>> > > > I'm thinking I won't do that=2E  I don't want to add that overhea=
d to
>> > > > each page=2E  People interested in the history of a page will alr=
eady
>> > > > have a look at the git history, and there they'll find the old st=
ates
>> > > > of a page, in which they'll find this information=2E
>> > > >=20
>> > > > And it would require some non-trivial work to add this note
>> > > > consistently=2E  I'll go with a removal without replacement, I th=
ink=2E
>> > >=20
>> > > Acknowledged=2E  It's been a whole 7 weeks for so, so I don't clear=
ly
>> > > remember my reasoning from February, but my suggestion may have bee=
n at
>> > > attempt to find a "conservative" alteration to file content or the
>> > > expressed meaning of the comments=2E
>> > >=20
>> > > But, what's conservative in one dimension often is not in another, =
such
>> > > as "labor required"=2E
>> > >=20
>> > > I also agree that while Git is a complex suite of tools, "git log" =
is
>> > > not among its deeper magicks=2E  At least not when run without argu=
ments=2E
>> >=20
>> > We did something similar in glibc and created a CONTRIBUTED-BY file a=
t the
>> > top-level and moved all contribution lines out of the respective
>> > files into the top-level file=2E
>>=20
>> Yep, a CREDITS file would be interesting=2E  I wouldn't keep info about
>> which specific files were written by each contributor=2E  That seems
>> something more appripriate for git-log(1)=2E  The pre-git contributions
>> will be visible in old versions of the pages (i=2Ee=2E, if one sees
>> Jane Random Developer in CREDITS and wonders which pages she contribute=
d
>> to, they can `git log -S 'Jane Random Developer'` and similar commands
>> to find out=2E
>>=20
>> Thanks!
>>=20
>>=20
>> Have a lovely night!
>> Alex
>>=20
>> >=20
>> > e=2Eg=2E
>> > ~~~
>> > The glibc project stopped adding "Contributed by" lines to source fil=
es in 2012
>> > in favour of acknowledging contributors in the glibc manual and throu=
gh the git
>> > log=2E  The record of existing "Contributed by" lines have now been m=
oved to this
>> > file to acknowledge contributions by these developers to glibc=2E
>> >=20
>> > argp/argp-test=2Ec:
>> >     Written by Miles Bader <miles@gnu=2Eai=2Emit=2Eedu>=2E
>> >=20
>> > argp/tst-argp1=2Ec:
>> >     Contributed by Ulrich Drepper <drepper@redhat=2Ecom>, 2002=2E
>> > =2E=2E=2E
>> > ~~~
>> > The top-level CONTRIBUTED-BY has ~3,000 Contributed/Written by lines=
=2E
>> >=20
>> > Sme of the authors predated the use of git and so it was simpler to k=
eep the
>> > lines somewhere as part of the transition away from "Contributed by"-=
style
>> > lines=2E
>> >=20
>> > --=20
>> > Cheers,
>> > Carlos=2E
>> >=20
>> >=20
>>=20
>> --=20
>> <https://www=2Ealejandro-colomar=2Ees/>
>
>
>


