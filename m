Return-Path: <linux-man+bounces-2540-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 602E9A49906
	for <lists+linux-man@lfdr.de>; Fri, 28 Feb 2025 13:18:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 63DCA16A43D
	for <lists+linux-man@lfdr.de>; Fri, 28 Feb 2025 12:18:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3370A25D91B;
	Fri, 28 Feb 2025 12:18:30 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from cygnus.enyo.de (cygnus.enyo.de [79.140.189.114])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C22B1C5496
	for <linux-man@vger.kernel.org>; Fri, 28 Feb 2025 12:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.140.189.114
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740745110; cv=none; b=HJakx/W/hF8eetSfdhfrowor1mqRQrFAgdZU8USbOtd52i5+RNFftEo27aphPCpQ8KTaBB43JubCdKsEMtiTe9CIzTZT81q4SNnzXLpdYKQdzaZGCXs/eQ1f6Q6Zkd+mee5CBr0eALHgT7o0gNx7wKF6l1fpZYeaCcp2d6/X78E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740745110; c=relaxed/simple;
	bh=4T1fsj5hggEIySpbrRWaOG6z5D2x5a6AXYq0dRYODB8=;
	h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:
	 MIME-Version:Content-Type; b=UvvQ4gY5n0ChSWxG0Mu1SCNHJOGujk7h9vkpe7kzlsLfN5xJbzhY5p27kYPeif2DZ2yVfFWndRp4EveqcuudUpHTswCvgRWwW3mBUYL+8Xr/sFofNHXfr8m5Zs3T4UDpu9ZVRsOx+grvo0e1aAwEDAoNEEDMnResSLO2VX8LWGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=deneb.enyo.de; spf=pass smtp.mailfrom=deneb.enyo.de; arc=none smtp.client-ip=79.140.189.114
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=deneb.enyo.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=deneb.enyo.de
Received: from [172.17.203.2] (port=55603 helo=deneb.enyo.de)
	by albireo.enyo.de ([172.17.140.2]) with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	id 1tnzJu-0099Ql-1E;
	Fri, 28 Feb 2025 12:18:22 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.96)
	(envelope-from <fw@deneb.enyo.de>)
	id 1tnzJu-000Fyd-0v;
	Fri, 28 Feb 2025 13:18:22 +0100
From: Florian Weimer <fw@deneb.enyo.de>
To: "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>
Cc: Alejandro Colomar <alx@kernel.org>,  <linux-man@vger.kernel.org>
Subject: Re: mismatch of type of ut_tv.tv_sec between glibc-2.41 and utmp(5)
References: <20250228103610.6c908004@plasteblaster>
Date: Fri, 28 Feb 2025 13:18:22 +0100
In-Reply-To: <20250228103610.6c908004@plasteblaster> (Thomas Orgis's message
	of "Fri, 28 Feb 2025 10:36:10 +0100")
Message-ID: <87y0xqp8j5.fsf@mid.deneb.enyo.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

* Thomas Orgis:

> I don't know the history =E2=80=A6 did it use to be a signed integer and
> someone decided to buy some time by making it unsigned?

Yes, this changed in glibc 2.40.  Some distributions may have
backported it.

commit 5361ad3910c257bc327567be76fde532ed238e42
Author: Florian Weimer <fweimer@redhat.com>
Date:   Fri Apr 19 14:38:17 2024 +0200

    login: Use unsigned 32-bit types for seconds-since-epoch
=20=20=20=20
    These fields store timestamps when the system was running.  No Linux
    systems existed before 1970, so these values are unused.  Switching
    to unsigned types allows continued use of the existing struct layouts
    beyond the year 2038.
=20=20=20=20
    The intent is to give distributions more time to switch to improved
    interfaces that also avoid locking/data corruption issues.
=20=20=20=20
    Reviewed-by: Adhemerval Zanella  <adhemerval.zanella@linaro.org>

> Now I have to think how elaborately I want to handle possible overflow
> from time_t assigning to uint32_t with the recommended way of using
> gettimeofday() for utmp =E2=80=A6

On the other hand, utmp is pretty much obsolete because the design
assumes a fixed number of terminal lines.

