Return-Path: <linux-man+bounces-1781-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE2E98456A
	for <lists+linux-man@lfdr.de>; Tue, 24 Sep 2024 14:02:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8038C285E0D
	for <lists+linux-man@lfdr.de>; Tue, 24 Sep 2024 12:02:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE05B127E37;
	Tue, 24 Sep 2024 12:02:21 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from joooj.vinc17.net (joooj.vinc17.net [155.133.131.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B5C126C02
	for <linux-man@vger.kernel.org>; Tue, 24 Sep 2024 12:02:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=155.133.131.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727179341; cv=none; b=PftlFy+Gre8IpYJCN0At66oI+fL+dvXzo0CVSvI8kEKpfITPnng9w9yFpFrI8i9ABweAW3wI7bR+tTDlDjhFNIj8DnMZsTM2qmxNPfsRm8RK1V3Ry7f5cXRJVJMzNHfbkgdaN9B8k89Qd3VaZpU9g9kz1P4IGp4Iph0D3W6Qcq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727179341; c=relaxed/simple;
	bh=ypDoPPtjCCAhLNKqmPoUjyV+sFjbSyfQeyPE+E/LdV8=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SR55CrSLurtWwSgV5JG+WfzrDGrc6GO3Vswiq3D5x5ew8o+KNYNrUdvUVLi/xCt7s8tLiGqGbB+qyGe1J9NPIeQNiMIBzyvDRu6Fs2+kX6scigzxgD/1Txhx79nf8owkehlsB9fnJ3V4ZY/UuytjnHcmyTF2TsdsZk4vRCXEfzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=155.133.131.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from smtp-qaa.vinc17.net (135.197.67.86.rev.sfr.net [86.67.197.135])
	by joooj.vinc17.net (Postfix) with ESMTPSA id 8E9EE4CB;
	Tue, 24 Sep 2024 14:02:18 +0200 (CEST)
Received: by qaa.vinc17.org (Postfix, from userid 1000)
	id 5BBDFCA00F4; Tue, 24 Sep 2024 14:02:18 +0200 (CEST)
Date: Tue, 24 Sep 2024 14:02:18 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] signal.7: Better description for SIGFPE
Message-ID: <20240924120218.GM3024@qaa.vinc17.org>
References: <20240924115547.294466-1-vincent@vinc17.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240924115547.294466-1-vincent@vinc17.net>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+77 (9dc98409) vl-169878 (2024-06-20)

On 2024-09-24 13:54:46 +0200, Vincent Lefevre wrote:
> Change it to "Erroneous arithmetic operation" from POSIX:
> https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/signal.h.html

BTW, the term "Erroneous arithmetic operation" also comes from
the ISO C standard (present at least since C99). I don't know
which one was the first to standardize it...

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / AriC project (LIP, ENS-Lyon)

