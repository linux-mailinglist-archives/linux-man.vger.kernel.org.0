Return-Path: <linux-man+bounces-556-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BBE874B2E
	for <lists+linux-man@lfdr.de>; Thu,  7 Mar 2024 10:44:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2893AB2224A
	for <lists+linux-man@lfdr.de>; Thu,  7 Mar 2024 09:44:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E18983CDC;
	Thu,  7 Mar 2024 09:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ljabl.com header.i=@ljabl.com header.b="toXKAEcn"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.ljabl.com (mail.ljabl.com [88.99.6.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647A183CB4
	for <linux-man@vger.kernel.org>; Thu,  7 Mar 2024 09:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=88.99.6.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709804668; cv=none; b=fCCIMhQZgXqo8TyjBrNv09XgLCYfXjEmL+4oM+F2s+4n0sXdbbjhArs72+iOgwdjOctQ0faRWiu8u8uBICuJgoLKsOsSD4jYuQzxEhOolftGl5GTblta8CYwV7eEQfXTuToOqVjBoK0Mk4Hj6LQrx1kpcghh5bDLJt34Iq2uQQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709804668; c=relaxed/simple;
	bh=tEvVdZDkJWUEYXEhubfd5sl2MwBemYe/9GfG0JDIW/Y=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ANgPTLWfXRiGWUO4wXlQXcXAr9x8tlliF5SIl7Zlc5zSV/NjrM9xOS4QdzpOnwpdZNh0pTcW8NoLVYJrYQksK9Xu4m8ovCTt/b8ClRaQy0OkLevGlRaulBbt10Qmc7wbfLTfhBeVvbbkVwcx54MSCPWAiDI6Q53yzFjIAAexR4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ljabl.com; spf=pass smtp.mailfrom=ljabl.com; dkim=pass (1024-bit key) header.d=ljabl.com header.i=@ljabl.com header.b=toXKAEcn; arc=none smtp.client-ip=88.99.6.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ljabl.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ljabl.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ljabl.com; s=20220906;
	t=1709804264;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2m2G3e2RVOt6x6Wsw4MhO8gG3kRbM8f7hot6MIZ5WQ0=;
	b=toXKAEcnB7/U+efg/50QclDJFJd6pza65vXfGufAp/jeNABH0Dkh+3VBIYcLtw5ZWBGx3v
	DzINZrS4B7OQHBzl+sRlbBbnDVl940BNW7ANuCLhESo1Abw0D5RJFb6h475ZaDJ98/N4Et
	exZui6h2ssMtA7qySMb0OtPn7ezDe8I=
Received: 
	by ljabl.com (OpenSMTPD) with ESMTPSA id 5fcc3d14 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Thu, 7 Mar 2024 09:37:44 +0000 (UTC)
Received: 
	by fluorine (OpenSMTPD) with ESMTPA id 0bc84017;
	Thu, 7 Mar 2024 10:37:43 +0100 (CET)
Date: Thu, 7 Mar 2024 09:37:43 +0000
From: Lennart Jablonka <humm@ljabl.com>
To: Alejandro Colomar <alx@kernel.org>, Guillem Jover <guillem@hadrons.org>,
	linux-man@vger.kernel.org, Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Subject: Re: Mail-Followup-To header (was: Order priority issues for special
 3type sub-section)
Message-ID: <ZemK5ypK5ccm8w7S@fluorine>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
	Guillem Jover <guillem@hadrons.org>, linux-man@vger.kernel.org,
	Oskari Pirhonen <xxc3ncoredxx@gmail.com>
References: <Zej60rSb9Ve5rRPy@thunder.hadrons.org>
 <ZekNZuR3nRczAIqX@debian>
 <ZekThJn_-AGkDyRb@dj3ntoo>
 <Zekhz_a9l5ZGwcAb@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zekhz_a9l5ZGwcAb@debian>
Content-Language: en-US
X-Clacks-Overhead: GNU Terry Pratchett

Quoth Alejandro Colomar:
>I've found now why my MUAs don't include you in the reply.  I've seen
>the following header in your message.  I don't know if this is something
>you configured your MUA to send, or if it's an accident.  Please have a
>look.
>
>Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
>        Guillem Jover <guillem@hadrons.org>, linux-man@vger.kernel.org

The Mail-Followup-To header field is good and useful.  And Mutt, 
for example, sends it by default, if you’re properly using `lists` 
and `subscribe`.  “I’m subscribed to this list anyway, so you need 
not send followups to me separately as well.”  More people should 
use and honor it.

/me unignores mail-followup-to

