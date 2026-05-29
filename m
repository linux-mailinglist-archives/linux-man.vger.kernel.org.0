Return-Path: <linux-man+bounces-5628-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOo3FbpzGWogwwgAu9opvQ
	(envelope-from <linux-man+bounces-5628-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 13:08:42 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C68B76015A2
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 13:08:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3309B30021DD
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 11:08:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F20513B8127;
	Fri, 29 May 2026 11:08:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UAOBNPJP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90AE7348C48
	for <linux-man@vger.kernel.org>; Fri, 29 May 2026 11:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780052918; cv=none; b=JyKyO38D7IJtVtGc08iS4bO42ka75nOA9cvuqUyBmPKGi0NrDOkmLm3KrNW9SS9pN4DoycX/Gwl+NB4tJFDHsR7phesLRCsHF0tW+yHoTr8uXYhjQnw0Cm1KTiMwIfXAs+XOE7RtJ26Q9Ptq1vS2AAFU3ktH8j1NtE/+lEyVtJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780052918; c=relaxed/simple;
	bh=gpcK56uhrtH74Zk0+fIvbNnIoHl7VRUDHxnqSnuOnsc=;
	h=Message-ID:Date:MIME-Version:To:Cc:From:Subject:Content-Type; b=Iy+y+BKJvslaMOPJGEJshlEWeTlhjTM+Kh6m40ALpxQuAg0mjyaeEsih6scd8wbMY8YACkt11VgTi3e5kGkBc6PIsIYQWmco2PAmh1zZ6KqF5V6KoLzSSx4sMF1+bWTzHnZF5H1/TmQA2/HqGOFLBmaN9HomIL8oTIIM0QqHxvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=draigBrady.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UAOBNPJP; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=draigBrady.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4904c1ce4c1so79618435e9.3
        for <linux-man@vger.kernel.org>; Fri, 29 May 2026 04:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780052915; x=1780657715; darn=vger.kernel.org;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:sender:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gpcK56uhrtH74Zk0+fIvbNnIoHl7VRUDHxnqSnuOnsc=;
        b=UAOBNPJP03TSAEVVQjLswUMVMk6BAHn83KzeA97J2ogS/HgQlnp6XieDnm4DnHAB7E
         9+qSiLBWaVkkmj1mzBG4S2sNfVqe3MmkCn+gLTnAuS/PAYx11VUnItKawDs1xL0fEkHz
         gPSb+Kj3oWOdA/5qf0cAq/WNsDIYHXIv3gPLGuACgy5110wncqvXNl2rYc144ZP8kRZ9
         2UOgdnDUhFnkPzMow2nNFxnpBlHyyMh7LPGyIy7d/XZIH4aFxPeGD2HQlGVciGtBwOtf
         BGbT9ftjulV20iYGfcr75T0aOl1aI1nViQz3Ofl69Suo+bM43n7ryi+WA68qoWTnWzYc
         lfCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780052915; x=1780657715;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:sender:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gpcK56uhrtH74Zk0+fIvbNnIoHl7VRUDHxnqSnuOnsc=;
        b=YgT8ilZXh8bGYMlvFiSVblxnrgu2I7egszJll9nWcUfjgPOKj0Zyk0WFE6A4ChUmTY
         MDxkOWmKwMeSP3QHGm7Mi9wubXVz7dWhCVceVqPhCIp7gTgPcuWAg8HG0iOJ4XUjrpBH
         clHbskSVB4gz2Fi2PgshYoyTyMax5YEgheRf0hjE/46nJp8QFarK6sgOMaNml4654ytx
         0AmoNrVXEVork9QEmTPQfZHkFvolSTdx6t2EfY/OG3rkCnIyM7VoETp57voMsQ76FtCC
         pRlrhvh1HxAApQRIBzv0P5OmFT19rSZ5LvEcx0y7l6Mk4nhohlN6tLPM8ptJgicZDDpY
         2Lhw==
X-Gm-Message-State: AOJu0Yxk+fVXO8dtDSQfzavYYMMjjCWEuNrd/cDqgJMCd8WvkJJwY+T+
	gm4jmk/6H1lJKP1ZsObFtFZbdYcXVBVz7Cg1eo6wh/vmuzo8CtvLFcJC
X-Gm-Gg: Acq92OH6Zwzwq0IsEyMSFFdrIliL5ITr+VSiirfCEifXov+8NCVjExO05sYVHV5kE7m
	40oCs6dKaXTIOy0nPgLLFGzfBnXxkgWhqCCSTbAAeUdPNZPlzqXud3nsOrm8s0jIAGw/gSsIkp9
	DiRyUtzD4q5T+VVLWxeX0xnZ8glkEJHlQLp/vhifa1wMypTh2Dh0VTP11zp+m74ip2ZYuPUmKlz
	mLlPaCfhGa1hAAXdqHAlUWYJp+d2KmFHYnH2fiLTOdM2jf2uG8rc90PlDXNf+Sx/tK0y+tMhzWX
	/Af5FIJsMDT3Qd7WHPUGI/uJz/SjlDZObl2vM/DUM+iffQ3ojYl6sX46rxCuUcf2uvH1pq/V3cG
	iTuby868bqKsQKlRBJXzbcnlKfJ6yGjKdbZJXTUX06k9IdoFEd/t6lPX/ESCLcUiZV2J5+7R7uD
	8y5qIPzWGwkJal+39z7fcNb+lgoNi7jOkbxWpOEWPoCKk69OxZOpNgVfL2Yfa9Au0aFBeWvZ0zi
	8sQvQ+gfpTt3w==
X-Received: by 2002:a05:600d:4452:20b0:48f:d612:3c4a with SMTP id 5b1f17b1804b1-4909c0773c7mr34203735e9.1.1780052914868;
        Fri, 29 May 2026 04:08:34 -0700 (PDT)
Received: from [192.168.1.31] (86-44-210-62-dynamic.agg2.lod.rsl-rtd.eircom.net. [86.44.210.62])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4909dff2a80sm38670885e9.3.2026.05.29.04.08.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2026 04:08:34 -0700 (PDT)
Sender: =?UTF-8?Q?P=C3=A1draig_Brady?= <pixelbeat@gmail.com>
Message-ID: <0f4714dc-fea7-4d8d-8942-85c4c592f7fc@draigBrady.com>
Date: Fri, 29 May 2026 12:08:32 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Content-Language: en-US
To: Alejandro Colomar <alx@kernel.org>,
 "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
From: =?UTF-8?Q?P=C3=A1draig_Brady?= <P@draigBrady.com>
Subject: Incorrect parsing of OSC 8 hyperlinks
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-1.10 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MIXED_CHARSET(0.56)[subject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5628-lists,linux-man=lfdr.de];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	DMARC_NA(0.00)[draigbrady.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[P@draigBrady.com,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,archlinux.org:url]
X-Rspamd-Queue-Id: C68B76015A2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

I see all the coreutils man pages on man7.org are corrupted,
due to the misparsing of OSC 8 hyper links output by --help.

As a quick fix you can set the TERM=dumb environment variable
which will suppress these escapes.

Note the help2man that is shipped with coreutils (in man/help2man)
is updated to support these escapes.

The escaping should be quite easy to parse though,
if you wanted to implement full support.
For example the arch html generator supports this as can be seen at:
https://man.archlinux.org/man/tee.1

thanks,
Padraig.

