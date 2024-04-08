Return-Path: <linux-man+bounces-727-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A26F89CCB8
	for <lists+linux-man@lfdr.de>; Mon,  8 Apr 2024 21:56:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 65CC31C2226B
	for <lists+linux-man@lfdr.de>; Mon,  8 Apr 2024 19:56:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA67B14600C;
	Mon,  8 Apr 2024 19:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="cw9Se6Sm"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 799A053368
	for <linux-man@vger.kernel.org>; Mon,  8 Apr 2024 19:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712606168; cv=none; b=YFAzXtHJHnOuCF7ctbzbYZ/Za39bYNHSrIbVoADU0lBr6J2y6mfK1dvZxDLhl+n8xvYHF/7bJEpBR+i1rFOoz1ObZjWEBUiCAU3hZ8rg2ezt0bQrhzrHeMq4kQllwORMNDc/otTIuBsYXw38EVlYjBjQNcnlbJRqFNqAAUQsl9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712606168; c=relaxed/simple;
	bh=79lhEbNtixaN+EYwnUB+ln3zUXunJ4M2OF2BkSlFSog=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VTaeJYRkZ2YD661+Ig9sj+QL3yi3184p9B3sNpFOBnm/Tdhm9Ld07uuS3Hnue3wzU0Kkm0hxt9UhCTXhvF4TLIkI0LPL77DAjUrU00mnMFmYHQk/UEHRx/GHdcFNX6IUsfKv5qQXaqEqRfqKANxD60oEvjHzxxlY5TfnaGlUhnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=cw9Se6Sm; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id C48413C011BE0;
	Mon,  8 Apr 2024 12:56:02 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id r57MQu9t8vOq; Mon,  8 Apr 2024 12:56:02 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 76D1C3C00FAB4;
	Mon,  8 Apr 2024 12:56:02 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 76D1C3C00FAB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1712606162;
	bh=UUO3SYbcGB7fEDkjMmACY1wUFHu28TL5jIx7WZXMKe0=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=cw9Se6SmPEy/stcNq/W/+SvUNwQFz5fNFteKQUJsbNe0+OwK9rwMyrJ4eAeTSU12M
	 4wmHdytWzET6C0Smlq5arANeZkelhIFaUU7Lokj+UInFmVuaJGmyAkE8neEpllRQKG
	 o4I7biiw5Ru39TinVx2CujXOBiR0PRui7UqI1lD9pkS7+hG3U89uk2xz/sqPmR02C3
	 6ni1z2B0gGkV+4ofdyevVvJhVMnsyMUiPemetwuMwCvrCKLQe/GBd+uBe5vjvZTj07
	 E7MGfilZNS3f00hz19Qm0PXb2sISvPcoeRJXhKVOSo+jr3mWmLDWgqLJZPUOGMg8F3
	 bH4mTxbl5V7ow==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id nUdcKZw3mNxD; Mon,  8 Apr 2024 12:56:02 -0700 (PDT)
Received: from [192.168.254.12] (unknown [47.154.17.165])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 4CEBF3C011BE0;
	Mon,  8 Apr 2024 12:56:02 -0700 (PDT)
Message-ID: <fac3cc82-38cc-411c-a2cd-5ab845d980c9@cs.ucla.edu>
Date: Mon, 8 Apr 2024 12:56:01 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [tz] [PATCH v2] tzfile.5: Fix indentation
To: Alejandro Colomar <alx@kernel.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org, Time zone mailing list <tz@iana.org>,
 dickey@his.com, groff@gnu.org
References: <20240317124350.96716-1-alx@kernel.org>
 <b01d6dcd-81ce-4da2-9186-0003069a1c33@cs.ucla.edu>
 <20240317190642.qozzibfnfrqbhued@illithid>
 <0d79c040-ee97-4e1b-a478-d4fceafb23ad@cs.ucla.edu> <ZfdsoDbomdrjp5o6@debian>
 <d39d2de7-52f8-4231-8863-2706ed89c827@cs.ucla.edu> <Zff8pT_1eWttIGPi@debian>
 <f34c6ff3-3b22-4e64-9eea-5009280f56fa@cs.ucla.edu> <ZhOrbl8GE4WhXGvD@debian>
 <dd4367ce-1e27-494b-8d87-0b2f627f7835@cs.ucla.edu>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <dd4367ce-1e27-494b-8d87-0b2f627f7835@cs.ucla.edu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2024-04-08 10:46, Paul Eggert via tz wrote:
> On 2024-04-08 01:31, Alejandro Colomar wrote:
>=20
>> Hmmm.=C2=A0 I use "\-v" in the Linux man-pages, and it works
>=20
> Ha! I just checked and it works for me too. It did not work in 2014. A

Unfortunately I spoke too quickly, as this does not work with Solaris 10=20
troff. On that platform, this command:

   printf ' - \\- \\(mi\n' | troff | dpost

outputs a .ps file that, when converted to PDF, gives you U+002D=20
(HYPHEN-MINUS), U+2013 (EN DASH), U+2212 (MINUS SIGN). So if TZDB wants=20
to play nicely even on this obsolescent platform, it still needs to play=20
its game with \*- instead. Oh well.

