Return-Path: <linux-man+bounces-4292-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CED15C5A0B0
	for <lists+linux-man@lfdr.de>; Thu, 13 Nov 2025 22:03:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A9903ABD00
	for <lists+linux-man@lfdr.de>; Thu, 13 Nov 2025 21:03:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F3FA3246F9;
	Thu, 13 Nov 2025 21:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jwilk.net header.i=@jwilk.net header.b="fK2Q6WDc"
X-Original-To: linux-man@vger.kernel.org
Received: from 5.mo534.mail-out.ovh.net (5.mo534.mail-out.ovh.net [54.36.140.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7F2B2C0287
	for <linux-man@vger.kernel.org>; Thu, 13 Nov 2025 21:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.36.140.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763067778; cv=none; b=RBiicLrGmlEyr0m2o0O0k0MT1OUQvN9OhfNfgwIwhlDWbPKyacgq7wPTF7HbSmjau+jU48W0Mjdlw4QUaysl/pZnbs1iuqUuxC71dSKwY4qCSgvomcmUwHCZbKBM0jWa+N/AmLHiSm6H8DAG+nbx75zwYHbwnMypVhu3IWUm7gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763067778; c=relaxed/simple;
	bh=vTNq6PpQiXbsTVuoXLh7LLbk+YkTJJ2ci+NObKQ9LIg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vm4kzVhRmbSpi/JyAliisOW6gJDlq6XDNgvKRc6xRe1Gv9AEWYZqufOvvbRim/IgDKXUdDlKg/R8si30L7GrnW8HvroFy0ndP+3bJKedNCLx9zapl5cBldAfpAqJeb5W7ngdl2dmtnXFPelyo3njYECgEIfXI7EE/Z5CPvOMJrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jwilk.net; spf=pass smtp.mailfrom=jwilk.net; dkim=pass (2048-bit key) header.d=jwilk.net header.i=@jwilk.net header.b=fK2Q6WDc; arc=none smtp.client-ip=54.36.140.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jwilk.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jwilk.net
Received: from director3.derp.mail-out.ovh.net (director3.derp.mail-out.ovh.net [152.228.215.222])
	by mo534.mail-out.ovh.net (Postfix) with ESMTPS id 4d6sk22r4Vz5xM5;
	Thu, 13 Nov 2025 20:46:02 +0000 (UTC)
Received: from director3.derp.mail-out.ovh.net (director3.derp.mail-out.ovh.net. [127.0.0.1])
        by director3.derp.mail-out.ovh.net (inspect_sender_mail_agent) with SMTP
        for <teika@gmx.com>; Thu, 13 Nov 2025 20:46:02 +0000 (UTC)
Received: from mta11.priv.ovhmail-u1.ea.mail.ovh.net (unknown [10.110.37.22])
	by director3.derp.mail-out.ovh.net (Postfix) with ESMTPS id 4d6sk21CGWz5vZM;
	Thu, 13 Nov 2025 20:46:02 +0000 (UTC)
Received: from jwilk.net (unknown [10.1.6.7])
	(Authenticated sender: jwilk@jwilk.net)
	by mta11.priv.ovhmail-u1.ea.mail.ovh.net (Postfix) with ESMTPSA id 5DA679A0E2E;
	Thu, 13 Nov 2025 20:46:01 +0000 (UTC)
Authentication-Results:garm.ovh; auth=pass (GARM-106R006afd6db38-1b09-416d-bcd6-f27841686176,
                    D0F59F159A378895B575DB2C9ED70526E450B906) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp:37.248.226.83
Date: Thu, 13 Nov 2025 21:45:58 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: Teika Kazura <teika@gmx.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [Patch v2 1/1] man/man2/ioctl_vt.2: Various improvements.
Message-ID: <20251113204558.zbdxpkuiy5xh2ynf@jwilk.net>
References: <20251110.165618.2111633615163528521.teika@gmx.com>
 <20251110.165924.79799750417985084.teika@gmx.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20251110.165924.79799750417985084.teika@gmx.com>
X-Ovh-Tracer-Id: 4866702349628812393
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: dmFkZTFmnerHjWakTKFA0EHZXxDE6I1ocuSbsc3kp6Ebz2xjRsvUgFFGmROESLGPa3aUBsAS71f8rK1hfXh2Hg6ZQLEEDEGIn9g0MjTx71Ti+JL2WZTRP/iML6OTCBaK+hW7XDuVL8hRoPIl5lc5UlJLr+1YaqB+lxjz/FRbDyBH/Hsf5CWNHLiRrkgwB6cSB314TJI7nxaBsEj0mQjbaoYW+U6O3HyHrv28487SZ5LE8+RUYfzhmx2QoE8WuPzOEpFwBwpCMm/n5wSvOdrIOkB6VpfnmM2nxJ96RsxsBWdihXhLG9W7zHj7m63urhWoFq7MflZJYxag0r1gMdTlSRCk5JmGF8IEQspc91W8eLZOzNepMJGV4w7H0h8YH1d06wQBP4EqyeTrePubpb/1Aet5Bhwkh1hW+caPhwgVAiTL5NCB4ECg/lc8+w46OLy7BUq7PZHbSYTiMcrCayBR20yqHBX6SKn6CBZvJAYrilbIs0F7oQD3LkLGYHmQ2mGiK4UPy3k0VHG1IdtHVCtwGCVUvkBXOCLIZTXlRZeriQIc9SkLHXya7dt1KE5udOp8R//3S9G9YKjfJvfcTUB8dqNBOqKq8iowFQQzxsFPGp/ohiXBiajGaD3w7qoUxPosmzbO7dpFrJ5TwcYydt0NNeIGYOrElA925T/VwbtNyXJp/tkJgQ
DKIM-Signature: a=rsa-sha256; bh=o1y8XzJpueZUsBHr7V5lyKy/rQ9hH3VSlzfurB9KP74=;
 c=relaxed/relaxed; d=jwilk.net; h=From; s=ovhmo917968-selector1;
 t=1763066762; v=1;
 b=fK2Q6WDc3+7F4OaxrdxpKJaMlzUbdEdPjuL4IeFBbM0QbeFbCjyg06xkqODof5vNulAz0ejU
 B5xOTuO6v02x+46zy/hnqvHhWWvk8WHjp4wP7LggvwhaBW7vQMYNyfX/nc2boAizfBErHTEyyme
 bT2RBXYmw5tH8tVNQ0MsBC2ykEBheF9W6yMihrZ9ZEJbtgPpsYrkEI3Z6STLdEQf8FioP3zymRg
 JzbtvDAD5WfvO7DCidOftX+uBzE4YLDJ2tarDb8MQO9hdKPBU5TmpdnLG78Gd1qEOWv7q+uc6Ds
 B5YaX48XZZdqd6CdjUOgP6oh0OfFH1J1NqcN/X9OAaUjA==

* Teika Kazura <teika@gmx.com>, 2025-11-10 16:59:
>+.B VT_GETHIFONTMASK
[...]
>+These are implemented but not documented.

VT_GETHIFONTMASK is documented in vcs(4).

>+A python exapmle

s/exapmle/example/

-- 
Jakub Wilk

