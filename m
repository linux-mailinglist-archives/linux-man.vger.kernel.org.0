Return-Path: <linux-man+bounces-2609-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DD226A65AAC
	for <lists+linux-man@lfdr.de>; Mon, 17 Mar 2025 18:28:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C02E7188C463
	for <lists+linux-man@lfdr.de>; Mon, 17 Mar 2025 17:24:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D64031A38E3;
	Mon, 17 Mar 2025 17:24:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fitkids-info.20230601.gappssmtp.com header.i=@fitkids-info.20230601.gappssmtp.com header.b="w/yZLP3n"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3AAC40C03
	for <linux-man@vger.kernel.org>; Mon, 17 Mar 2025 17:23:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742232241; cv=none; b=sVakueCPuoOJjYRmQGY0hmvA+jZf0SM4hA2jIAxWTCeZEF6KV2Y6sXhb6vIDEShmT0H6p1Vchn/vALY0Yu4JwONbvBoyr1grY2Zw6xpB1Jf8etMndFz/nQgfaGNXncZD2wxsaGkWDio4voF8kkx7jxNY5laczIO5A9EM9gx7dqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742232241; c=relaxed/simple;
	bh=pX7OFg2uJWFQhffbc5JyhHFa9a84M4zInh+CTr2+akk=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=p6Ugmp4LOt0sLjtnaVctBdvihVzukceVbqBEJVXCOVC1jHpqmkLFrhuKxivAFWtYKaHv/QsdyLtoucLaD+4QwI3GCM5QiomExOcnrCxbKcspnyx5PZdXGapKh1rI1I05hZmZyta6OXVsN6aipckTrDDHNwl35ru9a33ld5hoDYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fitkids.info; spf=pass smtp.mailfrom=fitkids.info; dkim=pass (2048-bit key) header.d=fitkids-info.20230601.gappssmtp.com header.i=@fitkids-info.20230601.gappssmtp.com header.b=w/yZLP3n; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fitkids.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fitkids.info
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5e5deb6482cso10495799a12.1
        for <linux-man@vger.kernel.org>; Mon, 17 Mar 2025 10:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fitkids-info.20230601.gappssmtp.com; s=20230601; t=1742232236; x=1742837036; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pX7OFg2uJWFQhffbc5JyhHFa9a84M4zInh+CTr2+akk=;
        b=w/yZLP3nmHPVzyAg06SGTGhy/R2fb+LdEvwvKGVE1DCUibF7H8YBVIG9LHNsqoZR6h
         gBvdoXhNJyTPEp5Lw7lsQbqDAESR/Nwmp1+pLUUmGmE2n4cORXSzznwzKV9nBC3vD5fW
         hOwQF9zt8RKIGDF9Hf7uioVlqc+nuN+MpSvV4IBjwqidlY6+OXj0+KmGKBf+MwV4+vma
         evKOnZiTBTWw+imvYvT8pObJwpsiDw2l6tSSxCZOHV08irzUdPfwXWmX1SGfwqcZiNL6
         88kJIDvgDK/A/Mr9fA7p/WSgK/HpXNfzrpclvobLelZficsGnnAn3Z89WMZ9gQd0sHbw
         Epaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742232236; x=1742837036;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pX7OFg2uJWFQhffbc5JyhHFa9a84M4zInh+CTr2+akk=;
        b=nMcqlOppzXM8qLnaIwhRav2wYeWFySsT0zppeGNCH4mdN9Mh7K8XRwBzcM6ohZyT1w
         UWA6G8OcT8567n2SbgvK7fbOdZbiMg05fKJNhj/VhTJ6ms/7KhXmHGn0NwS6UVLWltNO
         sDrzXGVPWBv5gv9j9sGRFi7A2tE6xPyAVkR/h0KnT4fABo1j5q2pD7o3UxLH+g1rnWNk
         dT+JA7e3WRijF872PhXjLenJGS63S/wwLHYKxLAwnYFjxmmdtvXh0+7Wf2ADulLKH2GS
         WKCVhtfsprfMnKYKI8mOThjMt1ERMxOwvX9rgoessOkaogaeOQAkxRg1crN/3v21//JI
         S0ZA==
X-Gm-Message-State: AOJu0YwkLGbcapWZ6Q31E4PaUrIpuxgE4xL9CkiYL+Ug7xUkVamee68B
	YJ9ZpqJXbmq48wm8YnNMiIwbNP/bFqdObM0Lrg21CFvdopHDNb96fSJofUS3Q25icPQzJtFFOk+
	K1teQTcbiTI1pIJhu5A9D/B0dI+m0Xqt+WLb7g5X+RK/FdDhm
X-Gm-Gg: ASbGncvYlgB+3M8ODso4xezrq2VQFVwggYjrVpKhVhRIdzpNQVYIIkWjgY68ZOgnFKG
	IMq7Elacod9tLi7jgDYH49ey+IicyO0tQmEnnhaup8oqlCN94NEFuJwkQd3LxpaYHWAaohQu032
	Q6C557XvUYEwL9RN9gcgi3D8BeMQ==
X-Google-Smtp-Source: AGHT+IHKbGq+RrZID9hGUtcV141qghkz/oKY6e6/hDFICVDYSDfHFUSXnoRPfzk+SeeSPEsBNf+ouBCZhOKb4P4FqLg=
X-Received: by 2002:a17:907:bd0d:b0:ac0:4364:4083 with SMTP id
 a640c23a62f3a-ac38ee9f7e8mr45705266b.0.1742232236328; Mon, 17 Mar 2025
 10:23:56 -0700 (PDT)
Received: from 607514101942 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 17 Mar 2025 13:23:55 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Anya Willis <anya.willis@fitkids.info>
Date: Mon, 17 Mar 2025 13:23:55 -0400
X-Gm-Features: AQ5f1JqZwh2jgniIisby97ARDxWrO_B_PZOE9j6Uco8Ck_i3ozxVB6jI1HfMBKE
Message-ID: <CALzLLoHw6=Z3ipfcwUodVCTNpcyEwRW6A5_01=hiVU5haouY3w@mail.gmail.com>
Subject: Food for your blog. Check it out!
To: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi,

After-school programs can provide many advantages for children, such
as enhancing their engagement and building their self-esteem. Yet,
choosing the right program can be daunting for parents, especially if
their child isn't interested in typical activities like sports.

I'd be happy to contribute a guest article to your website on this
subject. My piece will delve into a range of after-school programs
tailored to diverse interests, helping parents find activities that
will truly engage and benefit their children.

Do you think your readers would find this topic valuable? If so,
please let me know if you'd like me to start working on the article.

Best regards,
Anya Willis


Please check out my website: Fitkids.info
Nurturing your child with a love for fitness

P.S. If you're interested in an article but would like it to be on a
different topic, feel free to contact me without hesitation. On the
other hand, if you prefer not to receive any more emails, simply let
me know.

