Return-Path: <linux-man+bounces-4577-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FA2CDEA23
	for <lists+linux-man@lfdr.de>; Fri, 26 Dec 2025 12:13:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E4521300500C
	for <lists+linux-man@lfdr.de>; Fri, 26 Dec 2025 11:13:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0881031960C;
	Fri, 26 Dec 2025 11:13:33 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from torres.zugschlus.de (torres.zugschlus.de [81.169.166.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CB42951B3
	for <linux-man@vger.kernel.org>; Fri, 26 Dec 2025 11:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=81.169.166.32
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766747612; cv=none; b=Q68QraxrXxEIFcW7qLL68JU0uCEvqELzunuvPBA1iHSB4K+L0DWbxnVxOWZeAbvcN9HXqyormo8grQZOHvxn34QlLlgA12dsLhO/Mb0ILS9D6hnEDMreL8w482g1nBA5ocG3uFN2lR7af0miNf1e6LUoAeR50zIN0MK3BDV5lv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766747612; c=relaxed/simple;
	bh=V01jAWbGIoQadFx5UWqX9J6HwHAX/Al1XXf495uE6Yk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KFPCWYQ0KrJdbGde8PfsrrMbrM7q1wIA6k7uesRdaHocG18CmA3IaIM0d/tXB+cxy5SGM8CvvQTql7RYBiXNKIiIH3xHrTnmZnnWt88KABBFWRHx+6xipenn7HtXvOpObNCglIYZAC1f4FQRRBWmDmhDeLJjNeI7BOJB9HuAcm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=zugschlus.de; spf=pass smtp.mailfrom=zugschlus.de; arc=none smtp.client-ip=81.169.166.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=zugschlus.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zugschlus.de
Received: from mh by torres.zugschlus.de with local (Exim 4.96)
	(envelope-from <mh+debian-bugs@zugschlus.de>)
	id 1vZ5Q4-00GYqA-1j;
	Fri, 26 Dec 2025 11:51:40 +0100
Date: Fri, 26 Dec 2025 11:51:40 +0100
From: Marc Haber <mh+debian-bugs@zugschlus.de>
To: Russ Allbery <rra@debian.org>
Cc: Alejandro Colomar <alx@kernel.org>, debian-policy@lists.debian.org,
	"Dr. Tobias Quathamer" <toddy@debian.org>,
	linux-man@vger.kernel.org, Helge Kreutzmann <debian@helgefjell.de>,
	"G. Branden Robinson" <branden@debian.org>,
	Colin Watson <cjwatson@debian.org>
Subject: Re: Stop compressing manual pages
Message-ID: <aU5ovCzIf7t3ie_x@torres.zugschlus.de>
References: <aUzUvdZEJpDHb3QX@meinfjell.helgefjelltest.de>
 <aUzUvdZEJpDHb3QX@meinfjell.helgefjelltest.de>
 <aU0WjfHED1esOwPy@devuan>
 <fec615b5-af5b-46cd-ae09-d9343db6da77@debian.org>
 <aU1D0aL00gy1V-NX@devuan>
 <87ms364c05.fsf@hope.eyrie.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <87ms364c05.fsf@hope.eyrie.org>
User-Agent: Mutt/2.2.12 (2023-09-09)

On Thu, Dec 25, 2025 at 11:06:34AM -0800, Russ Allbery wrote:
>The rationale in Debian for compressing documentation in general is for
>embedded systems and other small installations, and it applies to just
>about anything that can be safely compressed (manual pages are only one
>example)

In embedded and other small installations, I'd prefer everyting under 
/usr/share/man just excluded from installations on the package manager 
level, but I never have been able to find out how to rub dpkg 
--path-exclude the right way to do that. While we're at it, exclude 
everything under /usr/share/doc with the exception of 
/usr/share/doc/*/copyright*

Having html docs or others compressed in /usr/share/doc is another pet 
peeve that makes it harder to use the on-disk docs.

Greetings
Marc

-- 
-----------------------------------------------------------------------------
Marc Haber         | "I don't trust Computers. They | Mailadresse im Header
Leimen, Germany    |  lose things."    Winona Ryder | Fon: *49 6224 1600402
Nordisch by Nature |  How to make an American Quilt | Fax: *49 6224 1600421

