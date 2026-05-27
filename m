Return-Path: <linux-man+bounces-5607-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LEnFcjgFmo9uQcAu9opvQ
	(envelope-from <linux-man+bounces-5607-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 27 May 2026 14:17:12 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B78F5E4031
	for <lists+linux-man@lfdr.de>; Wed, 27 May 2026 14:17:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 97F633006B62
	for <lists+linux-man@lfdr.de>; Wed, 27 May 2026 12:15:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FFEC35CB6B;
	Wed, 27 May 2026 12:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=man7.org header.i=@man7.org header.b="ToALDO5L"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9220527A123
	for <linux-man@vger.kernel.org>; Wed, 27 May 2026 12:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779884119; cv=pass; b=tpSPsfPF2y/ig/YM6oj7xlMC/l6cvrP9lpmwtalw4KTj/PLI45SX39zHH0B+x2dK9BXYiQvTskLdd1IfZXdkxGca4CPSn7wUHzmQjEqocCLzez8F7JiNg44VKl5KXVkrJDQjzrEN7e7811cXVxs0Xzno8mwKS/Dd2Qho63e8nKQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779884119; c=relaxed/simple;
	bh=suDwqYDZLSEaukuGXWR3HSuhZi8DpWzTOuNRzeOquHs=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=bMPtyhiUcXRutx8Zk7us9ctleymfuRU/R+PLxTGKH0CbAXsCyVJxQ4fWzTsKrjbPBPlgv/R4CdbcY19ZPVRbuCxCDsOFkkLS82YoOXftlzzgvWkTWJzf3oOPjiR2pyDhYwOyQ4eB3b+C/FPABkNarvfl5cjmOMvoWP1So86kF3o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=man7.org; spf=pass smtp.mailfrom=man7.org; dkim=pass (2048-bit key) header.d=man7.org header.i=@man7.org header.b=ToALDO5L; arc=pass smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=man7.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=man7.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-43d75312379so9861056f8f.1
        for <linux-man@vger.kernel.org>; Wed, 27 May 2026 05:15:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779884116; cv=none;
        d=google.com; s=arc-20240605;
        b=hb/5x7LPh0/BDnLQFVcj6cGUzdGdEDoAYDc60VXIjgieegBzJParOeeBhQnDn39s+H
         5yWIByjL9WYJ3vsdxNFSByejiNcKkwSnj0dJACtHp3oxVeSOlwxbY8+AmQNtLuvCcNKj
         Dk6pGdVgk05IeJ9r5clnkrIAQ9t5Z6dZ3xMOdlm7RZRC5EjznJeuQhG6hSASThm8NNLn
         iMBL6jyyrtM9T/VfXN3GeCf/UMOo7Bcho88N+KRU4m9gMGk9OkO9Jq/PSdozHriGpu96
         oF7iTfIuehv6KxEa9ExaNtnPu4LOOwQJh+KlGCiP/S1spchI+jDZTN8PfnnyhQte0uiT
         lgTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Ia/FX6YdlVDH6f7nCA5dJdI09otebURoHEtwB5BziEA=;
        fh=Fwyl30e8p6At0u6ZDO56Qp9ECRF9CZFFVR4HTAIaCcI=;
        b=bDKPYdj+l5nEOYR5qw0dzrnLB4V+hCw2Tz5i6hnJVsgUWTucmD13qoM920PC/xY0nj
         AxpIXMyIFsz9TrxaQ+blwC+ahKuXjb35wbSG4o7+xTGfAZeozJBZoJR/8sJKWihZVYak
         Ro0aId0v+SLosR00aDkZpGFjSSKZN91F5fEUtFKn57Uugn0cL0iu+rxKEneLCLusJHDD
         veeioQre3pJ4O5a+HmKT2WP5vgFZxulebQH0H3niWK3H2yT2GAIycHrx87XITNLj0p33
         E3SV3B6+oGmbGYv+eRrYUHMjwkkP25U7huwo7IKVWEtdM4jktZfQ2V8pjLKXPTpzAxEi
         z6xg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=man7.org; s=google; t=1779884116; x=1780488916; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Ia/FX6YdlVDH6f7nCA5dJdI09otebURoHEtwB5BziEA=;
        b=ToALDO5Ltz10S5V1TNtH0i7JQHz1dA/RYydD4eYec0GUpsO4ko4psnL9Etz7R4/H2q
         +gmu4njPNokPuSphBx40DHxDZP1QusZiZyEWsqoyat6TktpcyhUPmRQtEJ0h/xTsqWl7
         ALt5C4jc9/G5SBh69j+2GQLi+giLjWfkQwi3+gihr6WNbxpHr0tuuH3fWmAJPUZY5TJY
         P5m2ySqIkaQtAuQuMo1mU9XsUYVYw2wQ5ljls7Nr8fr75aQAXFPpyH/5WxulkMCbvk2C
         wdpvPnOcw9279OH8n37FzbCwuXJenFp75wvWhNDrs7py+AaBysl+wKMFBN7RfYBw2jrX
         0irA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779884116; x=1780488916;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ia/FX6YdlVDH6f7nCA5dJdI09otebURoHEtwB5BziEA=;
        b=cM+d2NHi6K1zL8exNhi7N4dr8BbAxKFLYzi/3k8FS7oGhACqBokysJgQq3/By5aYFs
         NPDlTQm2uBNAVayZ93D/acoyDH7/1GavZ27+3fBa72LzedgEchQ1UW04NkYSo6xFF8rz
         NXxRxo06y6x+v9hpFiSHOVG2QlcJCvAYi+JmaRAaHj/bHZ/sqLGW7QT35lsY5LHo0a2s
         ahrpVXYhYG2TFvq8Kb6IceY2sCSatSLxhP6JjTm7sBRW099U7btzhtltNkxHqp6OdlSX
         zbThFmyviYPr7nreoTZYsarTwZFI7RC44Op0WXsIRJoy5j7iDKs8BWwJQRxeF4sha0UD
         feFg==
X-Gm-Message-State: AOJu0YxiBFRlB/qFdmVTjTfwjoaMn0H9YIpMvBW6uH1iaZAKkOmSUqjs
	8b37lPG8Sh1rAVz+Gwpc+rvQoUvfRit1Zn26fHPhxcx5XEn8URWtA08q8QUrYJhmkSWMlZKzJFY
	75gKxAtrOurBnAKf8eXTVY78ZvhOLwagkvdih5IJ77k3Cr45MbUdhJpM=
X-Gm-Gg: Acq92OGMIqkXdPAya+ch1Kn/dNmIfGcyXMKkZsSU6xtKpRfCFILsDvydwaeKyG5BjIA
	9zzSwBv4SzLvYFnfAwNlJaVUIQNY+EkOHT1vQFrr48CNgzcEHsH9t6dtS2BQMxy5Er1yLeSS6R5
	VxXVNGQ1m8Gp2rZ6+2A6TTtp1zHQNysGJWmrAuhmlTqXtruMmh/0yzb2Mwtom/LuIDqks/9obgY
	6Jlat5rOubxyln1cVReU+8NM3Se4q6HeTshq6bo0m5f2CwO9RWDUlZANKDAH4bkL+yR99k0GYN4
	kftnj95PRxpA9mReua4Oyz1XG296Ki4eAXoe0m3hK9JK5KuuKGoOib1Z+mH0jeMwYGOt+OXiy8t
	BCbWI
X-Received: by 2002:a05:6000:1866:b0:455:564e:3a28 with SMTP id
 ffacd0b85a97d-45ea31968b9mr43139787f8f.17.1779884115744; Wed, 27 May 2026
 05:15:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Michael Kerrisk (man7.org)" <mtk@man7.org>
Date: Wed, 27 May 2026 14:14:39 +0200
X-Gm-Features: AVHnY4JgrkUBrjzNcXiKhMJYaj2s-Vpy3nWGzacvppASV-QkgT6HYE1ZCERcFd8
Message-ID: <CAFs=pgbvWhm7KUcdyt=ELT66FNuLNjqh3Ek-1d9V6sY2npJ5jg@mail.gmail.com>
Subject: Mangled function prototypes (phantom arguments)
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[man7.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[man7.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mtk@man7.org,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-5607-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[man7.org:+]
X-Rspamd-Queue-Id: 1B78F5E4031
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Alex,

It looks like some scripted changes have mangled the call signatures
in multiple SYSNOPIS sections in section 2. (In some cases, multiple
call signatures in the same SYNOPSIS have the problem.)

The problems have all resulted in prototypes adding a phantom first
argument. See for example this prototype from read.2:

       ssize_t read(size_t count;
                    int fd, void buf[count], size_t count);

As far as I can see, at least the following pages are affected:

add_key
alloc_hugepages
cacheflush
epoll_wait
futex_waitv
getdents
getdents64
getdomainname
get_mempolicy
getrandom
getsockopt
getunwind
getxattr
init_module
listmount
lookup_dcookie
madvise
mbind
mincore
mlock
mmap
modify_ldt
mprotect
mremap
msgop
msync
perfmonctl
pread
process_madvise
query_module
read
readlink
recv
recvmsg
remap_file_pages
s390_pci_mmio_write
send
sendmsg
setxattr
write

I did a quick scripted check of section 3 pages, but spotted no problems there.

Thanks,

Michael

-- 
Michael Kerrisk, man7.org Training and Consulting
mtk@man7.org, http://man7.org/training/
"The Linux Programming Interface" -- http://man7.org/tlpi/

