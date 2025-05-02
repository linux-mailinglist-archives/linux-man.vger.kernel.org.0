Return-Path: <linux-man+bounces-2858-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C9CAA7D5B
	for <lists+linux-man@lfdr.de>; Sat,  3 May 2025 01:40:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B5640175990
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 23:40:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFF97226CE4;
	Fri,  2 May 2025 23:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=martinlemaire.fr header.i=@martinlemaire.fr header.b="fZUqPAHA"
X-Original-To: linux-man@vger.kernel.org
Received: from 3.mo575.mail-out.ovh.net (3.mo575.mail-out.ovh.net [46.105.58.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4AA21C195
	for <linux-man@vger.kernel.org>; Fri,  2 May 2025 23:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.105.58.60
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746228842; cv=none; b=FFo7k+z3UqaDUpHv6nAASjX4ChVskBZDi+aEaZTBaWLTcmAEVtzqrgtEIpa7oiLfvpAm9NBYela1g8u2Ev8TuCZ3nJSb2pjDDtHmNs/2t2o134BrlLCI9o6QRH3vaH0xzeEWflQ+CufTUScgUPVVZR4odxxeMI+V/fVYh2sCC9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746228842; c=relaxed/simple;
	bh=iBmeaA1ZRx/q/mBKrMNIwUiynul2BSlEH3jK6ww2Lkk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=exeqUhFWLxxi7LveO6rMJemE+Ierx9ue6xX2KgVV3QMKdhAcrXQxBZrY05nqyyFesfK8zbh2C1Ux6suZ/ymhUTuZjwZIx+2QHje6R+xuAGxbyjsP4l+OPQwdX8pnIzDaaqtHOQsliMcd1kAEwxo4/psVPmtqtB/977o8uNglZac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=martinlemaire.fr; spf=pass smtp.mailfrom=martinlemaire.fr; dkim=pass (2048-bit key) header.d=martinlemaire.fr header.i=@martinlemaire.fr header.b=fZUqPAHA; arc=none smtp.client-ip=46.105.58.60
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=martinlemaire.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=martinlemaire.fr
Received: from director5.ghost.mail-out.ovh.net (unknown [10.108.17.59])
	by mo575.mail-out.ovh.net (Postfix) with ESMTP id 4Zq0Jc3z5kz1qbS
	for <linux-man@vger.kernel.org>; Fri,  2 May 2025 18:46:56 +0000 (UTC)
Received: from ghost-submission-5b5ff79f4f-2f7zk (unknown [10.111.174.98])
	by director5.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 31EF91FD1F;
	Fri,  2 May 2025 18:46:53 +0000 (UTC)
Received: from martinlemaire.fr ([37.59.142.114])
	by ghost-submission-5b5ff79f4f-2f7zk with ESMTPSA
	id qQT0EhsTFWhxlwEAoynk+A
	(envelope-from <contact@martinlemaire.fr>); Fri, 02 May 2025 18:46:53 +0000
Authentication-Results:garm.ovh; auth=pass (GARM-114S008d9b244d0-dd7e-4d30-82d3-38e66b6a5f1f,
                    3B2BB2785341758176629FC674206738387415D9) smtp.auth=contact@martinlemaire.fr
X-OVh-ClientIp:92.184.108.75
Date: Fri, 2 May 2025 20:46:47 +0200
From: Martin Lemaire <contact@martinlemaire.fr>
To: Dave Kemper <saint.snit@gmail.com>
Cc: Groff <groff@gnu.org>, linux-man@vger.kernel.org
Subject: Re: Paragraphs formatted differently depending on previous ones
Message-ID: <aBUTF6SphOspqAKT@starship>
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
 <aBTDZiUVotN_80RM@starship>
 <CACRhBXOPUdngLptS-oGqkeCZ=R=as8Fhkf6jSuznC+TMbbQx0w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACRhBXOPUdngLptS-oGqkeCZ=R=as8Fhkf6jSuznC+TMbbQx0w@mail.gmail.com>
X-Ovh-Tracer-Id: 1378101489251392873
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvjeefvddtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvvefukfhfgggtugfgjgesthekredttddtjeenucfhrhhomhepofgrrhhtihhnucfnvghmrghirhgvuceotghonhhtrggtthesmhgrrhhtihhnlhgvmhgrihhrvgdrfhhrqeenucggtffrrghtthgvrhhnpeffjeejkeevudeigeeljeehffevjeeileetkeefteffvedvhedtieehiefggefgkeenucffohhmrghinhepihguphdrsghlrdhukhdpfihikhhiphgvughirgdrohhrghdpghgrmhgvshhpohhtrdgtohhmpdhmrghrthhinhhlvghmrghirhgvrdhfrhdpghhnuhdrohhrghenucfkphepuddvjedrtddrtddruddpledvrddukeegrddutdekrdejhedpfeejrdehledrudegvddruddugeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomheptghonhhtrggtthesmhgrrhhtihhnlhgvmhgrihhrvgdrfhhrpdhnsggprhgtphhtthhopedupdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheejhegmpdhmohguvgepshhmthhpohhuth
DKIM-Signature: a=rsa-sha256; bh=3xHGTEGjjS8JSuzLftd5DvuSTr5qiRThy4GmOSxjYN0=;
 c=relaxed/relaxed; d=martinlemaire.fr; h=From; s=ovhmo3189267-selector1;
 t=1746211616; v=1;
 b=fZUqPAHAOW/XveWl4c1Ip/0Qos7w9BImlVaLi/9bTcJTz0ESrOwFsLCG+SBcViBQvpL9fL4w
 2FWE63Mcpz1xCLZRBf/Rs5ekkFblcIbQ4CAo1VEVmX3bNQ7mXCGXqnR8rpDjoiQ6YUr3GI680Sq
 hZFFbsJjHmnAH57Rjhf7oogYNLxOqB2OkMtsILokpKHApl3K6lLqgLzK9vkUOqheQH4L88eibh/
 MeGDokCaH5b63s+vuLSCDdwLR7BNvRaTCEdq6kXG5pueeO5yaWueIvDlVe+XYAW+5FQ7Pe2lMYI
 Y16fvSG7hxeSWbvMF0ptNbzOqtkWcDSiiTxFzUCUi5czg==

Although Gutenberg had a major impact on printing in the 15th century,
there are traces in Asia of xylogprahy[1] as early as the 6th century. 
It is argued that western educations give the guy too much credit. 
His contribution to the craft was more about crafting inks allowing the
printing on both side of the sheet.
Earlier than that – and closer to the practice that is printing
characters in a monospaced grid – there has been stoichedon[2], a style
of stone engraving where letters are aligned vertically and
horizontally. Words seem to be separated by a spaceless sign between
them. I assume this absence of spaces produced the most uniform and
pleasing grayness.
To my knowledge, we have to wait for the year 2000 for someone called
rs1n to produce a perfectly justified monospaced document[3] without adding or
removing between-word space, writing and typesetting at the same time.

How does *roff monospace justification algorithm relate to its sibling
justifying proportional letters ?
Are the two vaguely related or it's another approach ?

Martin


[1] Printed copy of the Vajracchedikaprajnaparamitasutra, 868 https://idp.bl.uk/collection/51FDAEAFB4A24E2E9981692A98130BC8/

[2] Stoichedon https://en.wikipedia.org/wiki/Stoichedon

[3] Super Metroid – FAQ/Speed Guide, rs1n, 2000 https://gamefaqs.gamespot.com/snes/588741-super-metroid/faqs/10114
mirrored here https://www.martinlemaire.fr/metroid.html


Le Fri, May 02, 2025 at 12:42:30PM -0500, Dave Kemper a écrit :
> On Fri, May 2, 2025 at 8:07 AM Martin Lemaire <contact@martinlemaire.fr> wrote:
> > Off-topic to Alejandro's initial question but related to the subject of
> > justifying text set in monospace, do we owe this typographic gesture to
> > the early *roff formaters or was it already a thing in previous
> > publication tool, either software or hardware ?
> 
> Branden addressed the conceptual basis for such adjustment.  The
> origin of the specific algorithm used for monospace fonts was revealed
> by its inventor in a post a few years ago:
> 
> http://lists.gnu.org/r/groff/2018-06/msg00044.html
> 
> Other than starting with a different adjustment "direction," this
> algorithm remains unchanged in groff today.
> 

