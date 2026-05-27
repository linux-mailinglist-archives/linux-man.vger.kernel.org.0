Return-Path: <linux-man+bounces-5609-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBbtJtsgF2rt5wcAu9opvQ
	(envelope-from <linux-man+bounces-5609-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 27 May 2026 18:50:35 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF825E807F
	for <lists+linux-man@lfdr.de>; Wed, 27 May 2026 18:50:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 80DBD3003EEC
	for <lists+linux-man@lfdr.de>; Wed, 27 May 2026 16:46:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44B9A30C15E;
	Wed, 27 May 2026 16:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=man7.org header.i=@man7.org header.b="ZvyZTRrK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73C9243E9D5
	for <linux-man@vger.kernel.org>; Wed, 27 May 2026 16:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779900408; cv=pass; b=rE9IdMY90qNeA0uCsLqH6rUracFDxh9ooHsgdatQmValbaEEZNUpQSsZ+healbfFYBBwf98rJi5jwndNaHqZKXc2gDP+7wcjdSbZDqVjedI4erxqK92XsrbUQGrNd4Y6SvdCZMj91Ek1sgc1uJgzOH5Br2QKmNtI94lgs+4JGzw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779900408; c=relaxed/simple;
	bh=ZGk/k1Hw4KRXJ27tqEA8eayO0JbXOk5kio5UISwhWX0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tESOdRZZjs3ocTMlQBwCJYQytQzeNtB/97KnWvwa5Z43qPGvoEE8+l+Yep21x7p7VftRmCwOJaZdMUmjVc+w0cL6JGoo6tksOZJ4iNmgo7c9xGvxjpWudd9TYqseOiE/SmbZISDCwg7mbCEloMF7ef5GbHk8aOnHUwcW0eiOzgU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=man7.org; spf=pass smtp.mailfrom=man7.org; dkim=pass (2048-bit key) header.d=man7.org header.i=@man7.org header.b=ZvyZTRrK; arc=pass smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=man7.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=man7.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4891b0786beso79690815e9.1
        for <linux-man@vger.kernel.org>; Wed, 27 May 2026 09:46:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779900403; cv=none;
        d=google.com; s=arc-20240605;
        b=isv62OvrgHF1Mz9tjCD7d3dhqMM0P3AvtBr9M6JkWVRzF4njeRhCb5hG3xyivU5HH3
         FVrvpXYS0r03fPEZ9HJh7kK8kRPZb3BtT5WJybfCH6r6QW/oucW2Jj8mlFFVLIGU8YvT
         i/E6QjWnE507l3ZfKOt21aOxUq/mENrgfyIsyCVGvDo5Jke1Do/C4y5qPga+N9BOuNjH
         tBDdETjJ8xGCctsUnSnkAfj8kSUUluEWciLuaZJ7sc0hkOmx6J7+3qTHVrdBTC5r2zgt
         0IM5m43HrkyrMjDG3mPCqR/6q20rLhfI1jRtWIkcLQPz5AHzUIXXE8cvN8j96QAlC/fC
         KemQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eUwrAdatpZSnMXlHZB606ZR259DWzstZLe3HM19jBKc=;
        fh=Fwyl30e8p6At0u6ZDO56Qp9ECRF9CZFFVR4HTAIaCcI=;
        b=SshhH8XNvBWnakwpBqSTvLipRbSks3RGNZrQz4FVhpXro8XCXScy6+Io3pQLCcNY0J
         ABoS2gPMGnw+fje2vLdfz+I5WEevilHQ2MTGzfRBvGn3tKvjVP+5koQN/3/8GbGFSSMH
         8BFHw04VVN0L57MB66KEZ6kHw5m09wDyYv4M8HqfAH7u3bxP7EBzGFa4vmBmROkAxuEd
         iRR1lUoyVVdcfXQc7l6bIQb1VB9vHqCpX+boVIL4CPNMXVfKUmVxBIHP06BLjgF2XPlv
         38S8iFNj3KbzwQmElM5Xl8LVMgx/KqbxewTwX/Lmp7K3mMnUlQKkWFiVxWbappGCKYm7
         FdFA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=man7.org; s=google; t=1779900403; x=1780505203; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eUwrAdatpZSnMXlHZB606ZR259DWzstZLe3HM19jBKc=;
        b=ZvyZTRrKR/UhJK8RF8LTvGsNR5ghH+dC3fHuDaBkebFql/+8hhpc89eS6o+4zKcore
         vHuNGoTE84Sduu+A9fptdkBFMEzGNxIfm3DGkCZSE8MsTok7s7T+/KlKkOVYXN+B/mLx
         Nex915Zpt0AeoeffREgI4Rcxri/g9CUWRB/MSeW5TVnlVWJOlzIDA4qsrnNyzBQOzByV
         5LJtppDQWeO24zKY7NtcFUU/gSlcqPWeaBwrmEXH+jDFAXw03WcH5z4aC+UMqNUouH48
         aU6tsyAO4PsGiPo1t4/fR+BkhGsOryOBOIilL983qrTXyFapnMjpMEmbsnhf9Fagq22R
         63eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779900403; x=1780505203;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eUwrAdatpZSnMXlHZB606ZR259DWzstZLe3HM19jBKc=;
        b=DXJy5C0E2wOH08C/jMcsJzpHW9LhJLK2hb1YkUKO73pwWqA1jGKKrVG94dJcxdeL/j
         HRG3Qv/SfMCFrHTAVADS7hz3grXaxRyme5r0Qzon8f4mV1JUheuIc7mraHkPor97/O2k
         aLKupNIPqXlN+6uJyihwScWrhS0V1/TPRxwzQdub8/r61f7nYDUDxjK6t4qfUwmrWluV
         U84skVEYEUQ0zj1n/JJFHsymg7tcDyU3TeJsSbd+u+IeCsySDnrCvyG2AsyUuUn3iz2Q
         dOW3pPyLraPOqDoFycpRXhjGnFxOpOwFSdD6TiaXiGbxAPAPkGfsKUBq5OaRRRaJDTnF
         EMKg==
X-Gm-Message-State: AOJu0YxJU8nA+YqZVdlUx464nj+jdroVzHmqLJFn+KZI/tBb16qE0imE
	5Flgm9RLJBBWVXK6ZKA/U+IYYNgLQrKnV+8KWh+5n0aS+PLbmLsFK85QOqXmvIClaM+G2ydmR2q
	OdPme9yk53/QQltEbDeyuKC7Mn/IfoyzyNZNyXA6Gl2PUYEhjenn9
X-Gm-Gg: Acq92OEWGM/C2ndZkwx43cy/Awkyq4qQSTxiXbCN8lpmmXLi3s1kYXtdeBOY3b6YnxY
	1cV+QFxMbghMFvlGgQUJFQ4GFB7TdshrKFPoKLgVyG4utcSBkE9SZHm+S23+6/bxWIZE/NwgaAQ
	Kgpb5dsPkVRf9Su71HKt32X944g8WmzdCz3qWMvdCesm+q2f3o+lXia9oPBO4nvjPeuPXh+qCAV
	9Q8xurmHihIiG/Bt0e4bMyrVzFgCWR1ZdWTs0iNRDUBADNStixtJDBmAep2ucFBtdlWZGpq8Gfk
	undQnVuDQ7q2NZJ6LPQeH5IU+0kIO6138F/l9Ud2pe5IYbFcsNmlmjJrjB4JxTZzfIDahnwJ0Ol
	l9ivA
X-Received: by 2002:a05:600c:4510:b0:48a:53ea:140b with SMTP id
 5b1f17b1804b1-490428ddf15mr373968285e9.28.1779900403028; Wed, 27 May 2026
 09:46:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAFs=pgbvWhm7KUcdyt=ELT66FNuLNjqh3Ek-1d9V6sY2npJ5jg@mail.gmail.com>
 <ahbxJGIK8Qf4AqVl@devuan>
In-Reply-To: <ahbxJGIK8Qf4AqVl@devuan>
From: "Michael Kerrisk (man7.org)" <mtk@man7.org>
Date: Wed, 27 May 2026 18:46:06 +0200
X-Gm-Features: AVHnY4KSQispP8UgCfKs5eq6GtqqtX-p-_00DEubfL4YUQxWeZkg9x6NMeKhzpw
Message-ID: <CAFs=pgYAfonz99yGyoS+h76v7YrfT8=f4yg6zQFqDPgm8XfsoQ@mail.gmail.com>
Subject: Re: Mangled function prototypes (phantom arguments)
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[man7.org,none];
	R_DKIM_ALLOW(-0.20)[man7.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5609-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mtk@man7.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[man7.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[man7.org:url,man7.org:email,man7.org:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Queue-Id: EDF825E807F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Alex,

Thanks for responding.

> > The problems have all resulted in prototypes adding a phantom first
> > argument. See for example this prototype from read.2:
> >
> >        ssize_t read(size_t count;
> >                     int fd, void buf[count], size_t count);
>
> This is valid C (except for the array of void, but that's a separate
> topic).

As we see, I'm not keeping up with my C :-).

Is this a GNU extension? Or part of the standard? Or an upcoming part
of the standard?

Thanks,

Michael

-- 
Michael Kerrisk, man7.org Training and Consulting
mtk@man7.org, http://man7.org/training/
"The Linux Programming Interface" -- http://man7.org/tlpi/

