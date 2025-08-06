Return-Path: <linux-man+bounces-3357-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E4507B1C79E
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 16:30:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 00734561FA9
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 14:30:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 522EA28D8C8;
	Wed,  6 Aug 2025 14:30:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="H8hJO8Yg"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o95.zoho.com (sender4-pp-o95.zoho.com [136.143.188.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE50428C864
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 14:30:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.95
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754490614; cv=pass; b=ohE1y8nCgIyZba2bl+5NVaKQHEt/oMxLQtfMC9Q2zrO8ENihgeBUZDwy5HR3zAS6rW9Q0gxM361eKH9srbv8a0m6LEEdk2zcmE8o0yofawsVXUKkBk4Hs2mG6lD92v5oLkxFKja1fqPsqfUABS/4BRO8i4M0t66PJjwmhI/qlwI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754490614; c=relaxed/simple;
	bh=+Pp99mv0THz6pXREXnosFkgL1ZYeQf1oY7lRwoLgOYY=;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:
	 MIME-Version:Content-Type; b=N/zfIwzkMZPY+54y5UapykYZ2omWu6Iz+iKXm2x7pVPw3sqPi/mDNaIENRJqtEJY7pvDG01Q+5NYF3Kd1J/Pkbof7WpXU2K5lGNhtNjCorATyhUutkweTlKdEirg+ykh5eAOxWaMpDemDI8z2hEo2m8BpyU3mvpqbp7+/5j7MKM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=H8hJO8Yg; arc=pass smtp.client-ip=136.143.188.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1754490581; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=CvOG9sApl95ZuK4ks6oSkXJ34k53KPMbmPXl7RmdjvyT0833bC7NI5O4TiwSpjeu3F1H7y8RxkncZZ3EAyMtDMIW/8o4gBhtjfMd07JxqbkeO5hS28qDgU8YhkMOvukx4WTkhOkNu2B1lqDhyLNlU0GQB9g3XYse8JjFbUEp5xE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1754490581; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=3VMiNePRXlcunVlXYZ0yPOJDo1blZTMkBLbzX/ACqy8=; 
	b=n8dbT6bT2/7ILCqgw15P3vzs05PgN8Dtx2bHuDM09VUeKkWokv1R3RXpRv3TswSilfROYZoJ5TKthKeezUbVyme1ZoF3/MQ/IvVBKzPx844SB6wefPnBcBMH/4OHByt3/gOnunsGQPJNXjRjPSrqF+q5+Z9VG4zZcP+Jqxo2+UU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1754490581;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Feedback-ID:Message-Id:Reply-To;
	bh=3VMiNePRXlcunVlXYZ0yPOJDo1blZTMkBLbzX/ACqy8=;
	b=H8hJO8Yg+/f92+KPVCNMZSOEuxSSbW0awBua56med0o+Yw+CihjUezkMh6avpjwb
	ThUmjpL6cUeM20IxmXJgddsAOJSgK8u7Ag3+wOZBw+EQu5w9a0HiAdNcR1EaDltKMQv
	jJiDnab8aKTaS8mKig8z8QDMDrj+DS+1A9Kd5SOw=
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1754490580222672.9296114076902; Wed, 6 Aug 2025 07:29:40 -0700 (PDT)
Received: from  [212.73.77.104] by mail.zoho.com
	with HTTP;Wed, 6 Aug 2025 07:29:40 -0700 (PDT)
Date: Wed, 06 Aug 2025 18:29:40 +0400
From: Askar Safin <safinaskar@zohomail.com>
To: "Alejandro Colomar" <alx@kernel.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	"Aleksa Sarai" <cyphar@cyphar.com>, "brauner" <brauner@kernel.org>,
	"dhowells" <dhowells@redhat.com>, "jack" <jack@suse.cz>,
	"linux-man" <linux-man@vger.kernel.org>,
	"mtk.manpages" <mtk.manpages@gmail.com>,
	"viro" <viro@zeniv.linux.org.uk>
Message-ID: <1987fc9ace9.ad1bf95b21215.9089923989658816796@zohomail.com>
In-Reply-To: <k34wjawrqcq2aqohsovkca2kad3ba3kmg57zwvrzw4wujq62dg@rittgebtd6ev>
References: <20250806-new-mount-api-v1-5-8678f56c6ee0@cyphar.com>
 <20250806074619.59685-1-safinaskar@zohomail.com>
 <20250806075021.ndodyx44xsyzxcu6@illithid>
 <2025-08-06.1754469395-mega-bleep-potent-sharpie-prepaid-quiz-2a9Vy3@cyphar.com>
 <20250806091157.ldpnbcbtik4eudjh@illithid> <k34wjawrqcq2aqohsovkca2kad3ba3kmg57zwvrzw4wujq62dg@rittgebtd6ev>
Subject: Re: How and when to control hyphenation (was: [PATCH 05/10]
 fsconfig.2: document 'new' mount api)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Feedback-ID: rr080112273cdcead92a0f6727434a9164000001624355893c7a47c6b33c0f5f174dbda740dfc5611638c307:zu0801122701d08c4efa22fdbaceeeb8d40000a1e0bdaa93d7c40ecea1a83e6b5a89ab30f5a34463f2d59c11:rf0801122b7c107413f6327b75814e521400008fb2511ae143cfbf7752840479783705cf8f44d2c7a947ad7ec9d7dc51:ZohoMail

 ---- On Wed, 06 Aug 2025 15:45:46 +0400  Alejandro Colomar <alx@kernel.org> wrote --- 
> I personally never use it, unless I read the page and find some line
> break ugly.  And *never* use it in manual page references (BR), with the
> rationale being that we'll eventually replace them with MR, which does
> that for us.

Aaaaaaah! I hate all these quirks. I hate all these roff quirks, mentioned in this thread.

It seems we did not get manpages for "new" mount API earlier, because Brauner gave up on roff.
He said: "Years of writing groff have made me tired" here: https://github.com/brauner/man-pages-md .

So I propose to convert manpages to some other format. For example, to reStructuredText.
This is what kernel uses. This will help attract kernel developers. So, please, convert.
At least mans in man2. reStructuredText can be converted to roff: https://docutils.sourceforge.io/docs/user/manpage.html .

--
Askar Safin
https://types.pl/@safinaskar


