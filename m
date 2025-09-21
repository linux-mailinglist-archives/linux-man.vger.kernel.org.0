Return-Path: <linux-man+bounces-3911-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B556B8D766
	for <lists+linux-man@lfdr.de>; Sun, 21 Sep 2025 10:28:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ED8FD7A1319
	for <lists+linux-man@lfdr.de>; Sun, 21 Sep 2025 08:27:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 127BF242D90;
	Sun, 21 Sep 2025 08:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bernhard-voelker.de header.i=mail@bernhard-voelker.de header.b="L3wsE408"
X-Original-To: linux-man@vger.kernel.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8EE623D7E8
	for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 08:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.126.135
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758443316; cv=none; b=n482NxaplG8C6iYCDiPTJLXK9ViNhPkcud48jMZuFAchkZnqEbNabTLeqG893GTRLau0KQJ42/Zjtt1gDMilnct7JFrwxEk/eqacJw8/o+YAsKRt09mEuUJDMghdv1oJdm8Pbw8Tatvqx+oC5+rIW/oeXZSkaCGURub+QxUNwOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758443316; c=relaxed/simple;
	bh=s8MFkypTB7PyoFaAEOMKvE/STPYFvQOb1VyCeyvuuN8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JvJCdxO8oYGzC/58gc0WASM5p/TO707yAG5hZbxQ3llvLiyoSm6rZjcnHzndnNbuzZPgTQth/Mqb0QAwSFy/BUnvqKbMN9uwKg6b2aS39AXdhd3vOd+AirVd/LEhzNujhN2357HRCQ/aB62S8HyqIjqCxQK9RnlXV6icSIDypbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bernhard-voelker.de; spf=pass smtp.mailfrom=bernhard-voelker.de; dkim=pass (2048-bit key) header.d=bernhard-voelker.de header.i=mail@bernhard-voelker.de header.b=L3wsE408; arc=none smtp.client-ip=212.227.126.135
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bernhard-voelker.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bernhard-voelker.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bernhard-voelker.de; s=s1-ionos; t=1758443298; x=1759048098;
	i=mail@bernhard-voelker.de;
	bh=okexiTnExNAPZ+r0Wd+NoGYOHJNv7ykK03+alDVrX7E=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=L3wsE408LMmdFUYNMX4ujnJ2kDAJQQVjYYQsq/yUOeUBWI4EO1SuDQDx2ZOLOuIR
	 XnEz6bPTj/F/MXKlwfhSTkxCNOHVUx2REbmBhF5ruMk+OCmlohqmE1HHPiFrt48ue
	 THc7rD7RnIL0Zh6I+AyIf7GDmWQrkUvdVM1TE6d9Cy+c+zX0D0WMF338B14MWq3/i
	 lJyK0VOaa2Inu192X/M1kceQdWEh/G2KH+TetWf7cJ6w9mSF7vTXFcU8YBWsvcvE0
	 73YEi+0GH3t3Rg6AEjZenB6Vlf/kMcRvqOX8v0bff2gqUVd640gTdfxiDQjqEzOhS
	 Vtp81l5YKjv5eIzsqg==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from [10.0.2.15] ([62.93.14.149]) by mrelayeu.kundenserver.de
 (mreue009 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MQMm9-1umpBT2cNt-00MORg; Sun, 21 Sep 2025 10:28:18 +0200
Message-ID: <b392d936-137e-4e37-82e2-8a4fe4fced18@bernhard-voelker.de>
Date: Sun, 21 Sep 2025 10:28:13 +0200
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Move GNU manual pages to the Linux man-pages project
To: Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
Cc: coreutils@gnu.org
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <e8152fd3-5095-4c5b-a52f-8451f67272de@draigBrady.com>
 <53jjjhuovjnbju4ex56hwoke2zz5rshxr6qjeqe3tidgcls4sw@zfnfbdktmtpb>
 <4e842b01-5251-495a-9a49-1ce59676acc9@draigBrady.com>
 <20250920174022.zjqt6fiv4vxo6vh2@jwilk.net>
Content-Language: en-US
From: Bernhard Voelker <mail@bernhard-voelker.de>
In-Reply-To: <20250920174022.zjqt6fiv4vxo6vh2@jwilk.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:hmWzydoxTEol8+zesIICLrQrWMwktl3YwT/PzjrBZ3pnc4g94A2
 x/blTuDndQuuzb5pfmtvmyC3k/a6u1DsNM4ziaNzlS1igMUuQJFnr7WswXMEp0GMsfeje7a
 IJH7GjNGTm6bfJ98zEG1lQdkYsor3aC2nK5SyNjlEnAhyBtctmdP7feR4iJk1ulOQM2iIai
 hVp6oiLrwtOHJRlo7fJqA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:jGiRzlx01W0=;EeYECA5R567Cx1pxy+83bt4XGsG
 YsWa+PJose5gPwrauLiMxaKPGkTmq1yN9V9Z+NcFNSaKqo+9P7P+VTQ1oYDL8ZqOz11JVcFkT
 qGPiK0T8n1Zc1wP9q+7BAww51OkcE1larAkYFvfaKJs2Pk2yvGLUN5/bB40M0mimyz4kAjWBL
 iPPGBmigxYyNjFzF8xqigoH9cVQTQpryNbYjYHqxJLUx75mMDn6Ap4ZwlrawMWsNgiIFPvH/2
 BZJaRQrsQJQ+9gRrVgScAn+IcbXHLfHeJS1GSDDiyMu8/cMJvnv/tZOWrIdKOmzWek6ZlI+5U
 A3Djf5u5a0W1UDP6zBh4LgtjnkH/ByjtOV499/kcUNVdS36KN7Hp55obtW+xKyAGM71ztHVBw
 RhuHtVn3bvLvCpzSkl33TQDa6GaTAKhr4CkmvNqESiF3jlp2vaEYgElZChXKdG8uxcgWC8nOY
 K0tFH225IRWdc0oYu04qxQTu+/4G5OpADskj5lSDmMUXy4Kwu5n8w8D6U/FYPWGUEa5JogNNx
 ccUVYkzzVe/883r0VzzrFhhPI6B6JJNcY6ERqZatUKYcXPmB+AIUz3OM2zzYfz3UseWZr/99y
 cOOSsIZo93guO5Oy2tKEYhR/ssx6nUtjhvPzWZVS0JP4SXnPsdcrcLQDrT4JtqPDNEazQEu4M
 Pn7m66XdA9OncgX/z5tXAQx2xL+Xms9xoQV+ghdWPDn7l0oEFPDTZCRBQGvQD28r1SyMFpFJZ
 9QLcVvp34P5GcUEDF1Jn2p74eejJ/gKtsCRbC9cROn1POPnCjP0jgvhFS23qvWoYTr+W2DrTU
 9PB0L8qRosfbXEAwGITI7OdcfviEO5r4HuEpZND4M+8oD0VeIBJS7QfE0P4rnVYjmzgXxGr8W
 ZwGLdf8PPgIAq2LdussyTuMXWH/IB0JcjGfTRcZRLXCl1r53UIlhyGv+NFPZWtRPCKj7yo064
 HlGgDMkVjfUXEi14H8QTXQsMAWAAXmewx/OlDxbFehS9y4y5uXQD+wlfcq4k7N9fSEt7HNtjl
 mTQsEExyfAsbBW8aDQtHXT+nPkkRBoXjooUwcJW+yc9e7nHNzon2SP8diaacYW0JQIJ6QwP4s
 8/caSDeundlRUKcmIBtVSAmQZnblOBvZJ4iyvzZYPzMUplnu3wo1Fr2bZ9F6vsaFAwWZ+12ky
 T9mQWw3CFrKrcI3xYZs+bepLNwI/nYHZ/NBfSjYMLFg9VNqIvRunQZ1V+yPIxBLZc0YPILNuv
 yOXPp41er5FpnBx00CzotN7CbT/R+PJyf4E8WBy0J8XRX1RhMJTQAU5GTvMdQqlzMsXE8Qlur
 hUtm6AB2wxbCZLg07I5fMBHwhEIvQo7SzBWfZaThvZxjZ2xwHLrjlvoQXccnuBAV8XhEaSiwt
 TODWbZo4d+ZNES2GblJd2Q3KT47W0Wk3/xZw+HQBik9NA02JPJsukks/jL+vVOmuxCNrm0csh
 v1nDt2B+QUHm34K7DBERKEFVO16MUEBnXFSsrrUy9H5G6P60MrQIhmuU2ru8m22C722FxtoEM
 nDkxF20SaemYhsyNXh7UY5yZnpGp52ao4na1Bgn/K4CnCx47PHIupuDLcbUKc+MDt35T3oqzk
 B/+cDrlEmnuHZQdWYc6pZnepT1cQQ8e47PVfKnEwOeN6wgkSIRKRKuxCnA/bT3q3X49xErCOB
 76qpwPwC+HpUen/e41g9OzKgvNgZFQz82MDd/mNJzxcN5Lz2bw1U84uNXAyxsYqO1jGvN17Ez
 rXc3bjxPGSIwb



On 9/20/25 7:42 PM, Jakub Wilk wrote:
> * P=C3=A1draig Brady <P@draigBrady.com>, 2025-09-20 18:01:
>> I my experience user don't enjoy the info _reader_, while the docs are =
fine.
>=20
> If you've been avoiding info docs because of the horrors of the info(1) =
user interface (like I had been doing for 20 years or so), you should give=
 https://github.com/jwilk/informan a try.


My distro has 'pinfo' installed.  I like that better than raw 'info'.

Have a nice day,
Berny


