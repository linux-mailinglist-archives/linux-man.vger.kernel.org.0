Return-Path: <linux-man+bounces-2321-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82306A24DD1
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 13:13:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 198293A5263
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 12:13:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC97D1D6DC4;
	Sun,  2 Feb 2025 12:13:37 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from omta038.useast.a.cloudfilter.net (omta038.useast.a.cloudfilter.net [44.202.169.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAA711D63CA
	for <linux-man@vger.kernel.org>; Sun,  2 Feb 2025 12:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738498417; cv=none; b=FPVxQZf3Tg6KJNfltMZdoHLcfHQ7xTepxoGrxmX93AVIs1ICmAIVR13+XxkdWgLm9Woeg5/0HiLJso2cB80GksJzMn6y7Knak+pi9mXyP6/NmtmkKLGFgvgGA3nWylR6B6zP1wcHmdpmNLTs9pkrEDe/A0EuBJSOHuZiTb9O97M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738498417; c=relaxed/simple;
	bh=6peb8KaJBmhfDt6W/33XSZ4astAect/TDTcrFrlgBBQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WxFyt155ed0GPjRritw/jxxwYemufu9/SuY86VT1qmmt4TMvEtgzUKVuOHrMomjFVjgOSkFzWqb+KoJXVKV0V1t3lYsQupHdcvZF5sSXY2o+VJQVWBCbfLrZDXjkJ4YB9ZMyEKSe7R8IVnGpLQoQwjgIk/R9eq5SkybDUQvmuHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=drabczyk.org; spf=pass smtp.mailfrom=drabczyk.org; arc=none smtp.client-ip=44.202.169.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=drabczyk.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=drabczyk.org
Received: from eig-obgw-5001a.ext.cloudfilter.net ([10.0.29.139])
	by cmsmtp with ESMTPS
	id eTKrtr4J9iuzSeYqutuyeb; Sun, 02 Feb 2025 12:13:28 +0000
Received: from gator3278.hostgator.com ([198.57.247.242])
	by cmsmtp with ESMTPS
	id eYqstga9hHEACeYqttDTLK; Sun, 02 Feb 2025 12:13:27 +0000
X-Authority-Analysis: v=2.4 cv=HdLfTTE8 c=1 sm=1 tr=0 ts=679f6167
 a=wI8P0wgu9qut9Qmby1c6ng==:117 a=x0OE6rfHJZ6H1OKZOK5cGQ==:17
 a=kj9zAlcOel0A:10 a=T2h4t0Lz3GQA:10 a=VGZVzwQjAAAA:8 a=neLuIxyhqNHGllTx0U8A:9
 a=CjuIK1q_8ugA:10 a=7KbCETwRv5F4J-amU3zH:22 a=m_VEIBz21GJuPbWKIyfi:22
Received: from 89-77-246-87.dynamic.chello.pl ([89.77.246.87]:50958 helo=localhost)
	by gator3278.hostgator.com with esmtpa (Exim 4.96.2)
	(envelope-from <arkadiusz@drabczyk.org>)
	id 1teYqs-003CEL-09;
	Sun, 02 Feb 2025 06:13:26 -0600
Date: Sun, 2 Feb 2025 13:12:42 +0100
From: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: signal(7): should it mention that SIGCHLD is also sent when
 child is continued?
Message-ID: <Z59hOsrmj_ryo00I@comp..>
References: <Z5U0Wh_KF3Ki62Pk@comp..>
 <zukhppwbbsyxlodjg3oipeop2f5hhgbxkxkjdqa63cuekgffn3@bmun5h3a2ojy>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <zukhppwbbsyxlodjg3oipeop2f5hhgbxkxkjdqa63cuekgffn3@bmun5h3a2ojy>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3278.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - drabczyk.org
X-BWhitelist: no
X-Source-IP: 89.77.246.87
X-Source-L: No
X-Exim-ID: 1teYqs-003CEL-09
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 89-77-246-87.dynamic.chello.pl (localhost) [89.77.246.87]:50958
X-Source-Auth: arkadiusz@drabczyk.org
X-Email-Count: 4
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: cmt1bXZicmg7cmt1bXZicmg7Z2F0b3IzMjc4Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfBl14KbaCTrbWA0ruyjtx+EwNxV1pF29dZDjO5RHBHk8s+PnyirjXJLXETpjDynVkdwOUGy7nS60f/MqeRIfsosNk40ytpNagctoEJsWUVJEdcNVFlF6
 Us1bKAY4Ot/FHDUnsQeUMPwMJfMwvwsffeIxAnSKtzInMrMtAI7eyjvymkF2B+QKsEd3+vwFUpY/4b+16rqbXNBf5xReOcuZt/k=

On Sun, Feb 02, 2025 at 12:06:09PM +0100, Alejandro Colomar wrote:
> Yes, we should change the comment in signal(7) to say that a continued
> child also generates that signal, and the comment should also mention
> the POSIX version where this was introduced.  Would you mind sending a
> patch?

No, I've just sent a patch.

-- 
Arkadiusz Drabczyk <arkadiusz@drabczyk.org>

