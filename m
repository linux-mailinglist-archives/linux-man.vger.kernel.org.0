Return-Path: <linux-man+bounces-5643-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLlpBsKAHmo3kAkAu9opvQ
	(envelope-from <linux-man+bounces-5643-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 02 Jun 2026 09:05:38 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D8C629577
	for <lists+linux-man@lfdr.de>; Tue, 02 Jun 2026 09:05:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 634BA300E317
	for <lists+linux-man@lfdr.de>; Tue,  2 Jun 2026 07:04:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C194377034;
	Tue,  2 Jun 2026 07:03:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=126.com header.i=@126.com header.b="ZePd8d2S"
X-Original-To: linux-man@vger.kernel.org
Received: from m16.mail.126.com (m16.mail.126.com [220.197.31.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B187B35838E
	for <linux-man@vger.kernel.org>; Tue,  2 Jun 2026 07:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780383839; cv=none; b=hy1XLCf4qR8bqe1iKhFbNATuPBoilJQIVQ25JffHXfV8fNAa/PcUyNd8cA8WpQCJRG3F7P6AhghP26ne5TM7vXiDoyklDy7VNSV/DAkhPPdtCIgAbjr7l0mYvSeOnQIry/TfeRm7lrQsiT0sv+QO9UnOiIprSNf/Kzzk+ZLLGWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780383839; c=relaxed/simple;
	bh=gZl/qZg7UInoTZFf03Au57smbF2Rm8WSkp1y/pCIZVE=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=LvStF/xR+DlomeHdwb9Jrgu+v4SGIr7ZYrlPISUc/7AxgM9zaugBcnVwGThOeveTnIoB8y+aodJD6nEb+sUzcugVncXzv81Tsx10LryB014y8WjlSsPv9V+Fpg0raouzZmw4pwUBf48xZWze/Z50D9l3/ua/B0qYwvxn03drtho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=126.com; spf=pass smtp.mailfrom=126.com; dkim=pass (1024-bit key) header.d=126.com header.i=@126.com header.b=ZePd8d2S; arc=none smtp.client-ip=220.197.31.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=126.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Message-ID:Date:MIME-Version:To:From:Subject:
	Content-Type; bh=rjdZvfq6hZOwYTVvRYszarQw9cHaugx2jE3+73hZC4s=;
	b=ZePd8d2SFasLtxzwm/QflBkifFjcBL9zpfTJJx1rjaY72Ehnb0r+Rzkw80aIXF
	STI7SJxuNMqNaixx+grhsUIdgRCZ5YpoxYMty1f8+WZmmwFtgdboCqhtAD+EO2aY
	GMNxCx163vaOg2Hf0HLmi6uIoK0kg6+xG018E9OoZLRVQ=
Received: from [172.21.153.216] (unknown [])
	by gzga-smtp-mtada-g1-2 (Coremail) with SMTP id _____wD3959LgB5qW9fYAg--.50770S2;
	Tue, 02 Jun 2026 15:03:40 +0800 (CST)
Message-ID: <0119ef36-2034-4c78-a0a5-86537f31468b@126.com>
Date: Tue, 2 Jun 2026 15:02:40 +0800
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: linux-man@vger.kernel.org
From: Zhai Can <bczhc0@126.com>
Content-Language: en-US
Subject: man-pages-posix: possibly a typo in sendmsg(3p)
Autocrypt: addr=bczhc0@126.com; keydata=
 xjMEZ8kf3hYJKwYBBAHaRw8BAQdAfYv6FjQrbU06lNnLPvfMiD0SY6GA36LmS4KwI6NGpYzN
 F+e/n+eBvyA8YmN6aGMwQDEyNi5jb20+wpkEExYKAEEWIQRwMaNgGMPoLiWbYoZASF4q3tSX
 GAUCZ8kf3gIbAwUJA8JnAAULCQgHAgIiAgYVCgkICwIEFgIDAQIeBwIXgAAKCRBASF4q3tSX
 GE7KAP9Gk1RLVISsuqFHd9Am73vVdDIjy73c2qzsIvH8SWTRHQD/fit0wHKx211uZLKGEuJ9
 JVOSZQ+Gx8mwp2ArrsQRigvOOARnyR/eEgorBgEEAZdVAQUBAQdAAk1VnZH+OvC03jDsZALX
 Rj1OrEkmqrCZPi1K4Qsr8woDAQgHwn4EGBYKACYWIQRwMaNgGMPoLiWbYoZASF4q3tSXGAUC
 Z8kf3gIbDAUJA8JnAAAKCRBASF4q3tSXGC8GAP9Ous9awMCN+2OG9Qu7c3tc19Tnh6AlmsQe
 bbAcJ9jYyAEA7m7JYfqMkavU4bt03XHPPsAyzo2By8wOfld8/AeqIgw=
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3959LgB5qW9fYAg--.50770S2
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU46RRDUUUU
X-CM-SenderInfo: xef2xuaq6rjloofrz/xtbBsw9VVGoegE-bLQAA3w
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[126.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[126.com:s=s110527];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5643-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	FREEMAIL_FROM(0.00)[126.com];
	DKIM_TRACE(0.00)[126.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bczhc0@126.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,opengroup.org:url,man7.org:url]
X-Rspamd-Queue-Id: 19D8C629577
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

https://man7.org/linux/man-pages/man3/sendmsg.3p.html

In the EXAMPLES section it states a "Done." which is weird here. I suppose it
should be a "None."? A quick grep shows the whole 3p manuals (2017) only have
the one occurrence.

  ~/man-pages-posix-2017/man3p ❯ rg Done.
  sendmsg.3p
  281:Done.

It's an upstream issue. Also in:

https://pubs.opengroup.org/onlinepubs/9799919799/

I don't have an Austin group account unfortunately so could someone give a
help and file this?

Thanks!

-- 
zc


