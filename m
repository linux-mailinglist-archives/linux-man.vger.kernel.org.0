Return-Path: <linux-man+bounces-5010-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBFGEz2ie2nOGAIAu9opvQ
	(envelope-from <linux-man+bounces-5010-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 19:09:01 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1C4B3642
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 19:09:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 64B64300AB2C
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 18:08:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DA57346AF9;
	Thu, 29 Jan 2026 18:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X5Pe7nh7"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB913334C10
	for <linux-man@vger.kernel.org>; Thu, 29 Jan 2026 18:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769710138; cv=pass; b=kQAOu9NlbP/w4yiyEuVkd2xpSPYmkZ1+fs7PxHyhHCv+vBzuKaGyxv+abRgR1DF3prE21+7eOgx2I1ZcDgXp/wx+pxXOcw0iGTSLifCOAp1SlmYXU84/6pXxonTucDOJeFBGHkWYHOMbPrK0ux6h5kubafHsSLkoLdLFsiFJLaY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769710138; c=relaxed/simple;
	bh=0j6AMA/Hmr2YDtKOH39De/lChMHNyqtqrc13l0aFerg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AhLbPXIZC0PqgPYWDYvX8kwRsSScdrzxIVHlKEyGjO4rpISWbARDDB5sbK7Ko9bO6/aYHsHm7hYPmSLBuwl2Q3mlemqf8a+VucN2sZk9diHgEUbbhy0jv4eoNEWQ6FjiEYKy0NeIoDjDcQcgG73H/rsDF7nLTljCIahPoVXur9c=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X5Pe7nh7; arc=pass smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-653780e9eb3so1889673a12.1
        for <linux-man@vger.kernel.org>; Thu, 29 Jan 2026 10:08:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769710135; cv=none;
        d=google.com; s=arc-20240605;
        b=K4QGarNiWC8v57VFKX4G/9kZMky4YyHKaJnnHl/dW+wrFVe8SHkmbs7tApyfmp86rs
         tJued+JMOJ9VDmpgZCudkyJvnY7P05gxdAkvwlQWs0qFWnpU8BeKfQt6ukYINZSV+PPM
         dg8rzGHu9LLm1NGMhFC0SbA6QivzolqQlVvZKgJwqfECac3S63UWLfWAVdarTkDJg1SO
         aoLBfbod9TaWFPgq0wJTG7kJecu2Zi/oPixURaooQmnFAWIeffnA4uXbG+MI2VxSZXv+
         No8Ek5GC67+eT09FTBwU7F2Flkqs9lNUP8UeVs8CVTkTEjpxhYIlZnQUdmLg009xMh/u
         DAhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ou0mRtHYV6YWGU38fGx0d05ePNAH9Vf60WNWBU9tOuk=;
        fh=IqpBG8ZmjYH4LkQ1vjVJj767Aad5LAby809+DHyjQ+U=;
        b=ZntjOSN+IDpkVmYBkrzwumSHqOV6rPUG/Ynt/NdsvreYl6HL7evtB7MWwfGhAc1EjX
         i+2eXRrUkZjjj6VyNzyiglYnQEHaEDblOSrib/cV6oIAVs7eiHQSVkam22mLtUoVbSM6
         MjQTVw1P0E6uL0lRfi90L+wNdqCsR2OOM4pmC8A7SFUlTN4buaQfr/Vmlu5fZLI3QQlM
         bBBRZwquLjYHjd5TWQ8NnoMJJdfGOz7ButUiuU+eG6CmROOsE49R2nFsGiIS6EEerLb/
         ZnjDnrHTZeNhWwYvJXOn/wVfIwX9D/BBcW9wyG0cJlh+VSUqSOcwInjn1j9o/kfjMBRJ
         7dWQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769710135; x=1770314935; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ou0mRtHYV6YWGU38fGx0d05ePNAH9Vf60WNWBU9tOuk=;
        b=X5Pe7nh78HUWbjsgCfH8i8i+87eh5CdEcqI/joXV819TAHw4lYkiVR1Nh87gAFJUDo
         IATp1grTbOy3t829UEmD5KrsCHssXtd0lc2iNJeIBh5hstRsAFkDeCitYEr1McBE+vvB
         DFvWz86XAppAr2RrDquZBwTdXyTDoWoKnREjX0Nts09g6kUdINQyYXSTNHavWwobmURE
         AqNpgukwYj6l2NCkwlA3jwdE5A0t/yiGWe/26rbe+UHjAZ4/yX9wR0iLKh19RCglQAFS
         USe4WtJRi9F48q2O66Cxj4GNel7RZCPT0a0KcySeR6rxhP4XUqIpsn0RuFnk6ZrFW8Qb
         i5iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769710135; x=1770314935;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ou0mRtHYV6YWGU38fGx0d05ePNAH9Vf60WNWBU9tOuk=;
        b=GutTavwPA7vb9kqxxSmJDxfMbVblzesA7iYISI+sq6gtufw1MNOmxtRXJMe9RJ1XTm
         JY5LMdEEb66ZlNLFWPogL5A104CzIwkieG9EQviQnThQtDjnbPm1wdlrXGXgjTbI2nBa
         5AiOf11U/ydJSIMbW06Hq47i+pUmArnvjzVA0M7JFcfAouo8obXAXHGioXiKstCYqJW8
         chExqOkja6iuSXUeHCA9V5Jeo5iM1TwYohNyIphZLIg7GGytby0hzicuIzmYYgMDae3u
         jIxeBNXNHAR9WPDL3oelpB0MBQLcgyGBglbm2GR4mbTvg6JRmUNxOrHe9OBs5gzUBCSU
         rlwQ==
X-Forwarded-Encrypted: i=1; AJvYcCXgEObpMcXEpb/bdTX/fPOQ1UchS5+7fnEe2gHYjGJzt6FK6AVB12N90rr/4WAvcI53/F/WJw91Mo0=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2LD3RblaZ6XogaHRF7VqSrdHhZ8ylfUlLYfFKCykZshybdktT
	SjybxdM47N/e8oeO4rv/Iwed9HwP5AXrrw+1YPZCJcl0995KJxQkyvaGVKfHGvXRnxHA3xkIxgM
	hUP8SFlKMs90NzY2toT80snyn7Fn/Jvw=
X-Gm-Gg: AZuq6aJA5p0LMaE2Wq6QnUtkwxVI3OQOun6yn+I5lLQz1CehaapATK55YCLwyqlPDz9
	JPXGqVXEGme5nmWeVW2vr+x7Bdxos44cuWuEARtV/Lsm0sRslsRR2MQ2QPkeG/21h4vkw78ls7O
	4myc0BTJtSSPiNdbqi5nvrsMj4fVsqT0wpe04v/gcflizdLJsSkbGUfzBOAltl4aLkXXq5dAFj8
	S0YONS+wqGrqA+k7XgqcGx19dzLnXuNU0uDIqu6zyNRBBMVB4rmXe9uFzMg1q0BYqIT8kYzxuaC
	Rti16kHVC+/Gn2W4HpOLbo2Gl9SBPnFInOTU/2oMiGf+Nii0YBRzZnQg+w==
X-Received: by 2002:a05:6402:210f:b0:658:11c3:421e with SMTP id
 4fb4d7f45d1cf-658de573a19mr259752a12.12.1769710134795; Thu, 29 Jan 2026
 10:08:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CANv4PNkbi35JzgKump4zdNSUEwSjCpS7pQLZ8LTm+kKZ_4vtyw@mail.gmail.com>
 <aXt9Cad8zPxKEWHx@devuan> <af74fa04-e25a-7300-bdc5-bd3092ecc3ff@redhat.com>
In-Reply-To: <af74fa04-e25a-7300-bdc5-bd3092ecc3ff@redhat.com>
From: Morten Welinder <mwelinder@gmail.com>
Date: Thu, 29 Jan 2026 13:08:43 -0500
X-Gm-Features: AZwV_QgAvQuoEnputhPCpKZsmK9_JxiPr5LB3csqd0JBNS4ULDoum4brl3Oix-k
Message-ID: <CANv4PNm4HCsNK6+pprzxw2Db_s8JEfpxn2kzZ+BsWA3K8-G9wA@mail.gmail.com>
Subject: Re: floor/ceil man pages
To: Joseph Myers <josmyers@redhat.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org, libc-help@sourceware.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5010-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mwelinder@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,sourceware.org:url]
X-Rspamd-Queue-Id: AE1C4B3642
X-Rspamd-Action: no action

For NaN, it comes down to the ieee spec.  Ieee-754-2008 in Section 6.3
specifies that the only operations delivering a defined sign for NaNs
are: copy, abs, negate, and copysign.  "For all other operations, this
standard does not specify the sign bit of a NaN result, even when
there is only one input NaN, or when the NaN is produced from an
invalid operation."

The glibc people have in the past defended the freedom to return
whatever sign on NaN they feel like.  See
https://sourceware.org/bugzilla/show_bug.cgi?id=31104 for an example
where float/double/long double versions of various functions disagree
on what sign to return for NaN.

I don't think the man page should promise more than some standard
requires unless the implementation is specifically offering further
guarantees.

M.

