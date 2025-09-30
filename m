Return-Path: <linux-man+bounces-4017-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1824CBAE9EB
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 23:28:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 710121943B82
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 21:28:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9300A29E0ED;
	Tue, 30 Sep 2025 21:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bernhard-voelker.de header.i=mail@bernhard-voelker.de header.b="qFQwaqBV"
X-Original-To: linux-man@vger.kernel.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C54C4242D84
	for <linux-man@vger.kernel.org>; Tue, 30 Sep 2025 21:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.126.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759267703; cv=none; b=IdqZ69ONIAVtmslLOA870WhPQvZMNeyKDp5t3PlgE13psBHGvbB9oXGscsSl8xX/ZfBT8qCh/gECp7VmyvM/ov4xSfZw3pEH3ITxcL6yUYnt2vjn/XXzNpT9crB17Ql3QcmHMdP4YAbnBMo5l3Db0ylJF6WL7cI/Blr5K1BJTJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759267703; c=relaxed/simple;
	bh=gYUby2l3HxLVz95cOnX/kqhFPH1HEzRxCM+RtaqdaMU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ICMODkWopFcgOws4jt0Mn98jseH7lkSOtHN/onACVHXM+PMQ3fLhzsPw01SKdWN+GqroBfw5j1QUsGZo6FVRN/BGWSkmt26f0vhmb+9edtMp/gFUhBO9oppIzmkWePhNHtHqGcW+rMjowOe4J4geUJ+74M55rGj9f1HGp/LQjb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bernhard-voelker.de; spf=pass smtp.mailfrom=bernhard-voelker.de; dkim=pass (2048-bit key) header.d=bernhard-voelker.de header.i=mail@bernhard-voelker.de header.b=qFQwaqBV; arc=none smtp.client-ip=212.227.126.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bernhard-voelker.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bernhard-voelker.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bernhard-voelker.de; s=s1-ionos; t=1759267698; x=1759872498;
	i=mail@bernhard-voelker.de;
	bh=ONUu0STcT9torcsLYIVNJRyACBd30otdn4QEqGdenlM=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=qFQwaqBVG2Xy2V7BL5Z1na5c292DU+5kJoqkX0zd9A56ilRuZWaA4svXg4WUHLmq
	 3M8+KpHL9G/jItfCFHRBKS8oeI8SH6sTafvXYE7OTPOCI92uztVQANn1TakGeofB4
	 fIv9eAXg8nXG5/4c8zVC+DyW4mfeEkaPIgI4rcGhyQI9Cla2Apq9rULE5Fh4wwmvy
	 id8WPzvoRd7KbqkW/XwQNutuXpN0hFLH8ZVWLdc1tSUSylWrbjrZNnVpEtOHvmpxk
	 fo6Fcoyh3WxOjGB6k3fwnDaS/glK1UT87CTqYbv6ndUexkMnDkGnKlegEgzkqRKF0
	 UdB1hv594fsJpLwwvQ==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from [10.0.2.15] ([212.10.125.97]) by mrelayeu.kundenserver.de
 (mreue011 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MofLl-1uXA8S2vvN-00gx32; Tue, 30 Sep 2025 23:14:29 +0200
Message-ID: <3be41127-4cc8-43bb-b276-771ae36753ad@bernhard-voelker.de>
Date: Tue, 30 Sep 2025 23:14:22 +0200
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Move GNU manual pages to the Linux man-pages project
To: =?UTF-8?Q?P=C3=A1draig_Brady?= <P@draigBrady.com>,
 Alejandro Colomar <alx@kernel.org>
Cc: coreutils@gnu.org, linux-man@vger.kernel.org
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <87jz1sm2t3.fsf@aarsen.me>
 <fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
 <87cy7e7hml.fsf@aarsen.me>
 <sdprfcwwtirbygpx4pqcavchf7hl3ichxjcxsr6kn6pl3f2ri6@7mshrxxpjhn3>
 <86frc5zj4i.fsf@aarsen.me>
 <avcjkfibgplayxdpe4nisfpmtmlwdaubesdo6oj5qj2sxfqpsr@iypkg4k2fauv>
 <530c7a63-22ac-4d4b-a67d-09b21086207f@draigBrady.com>
 <m52fukfcpbd5gsloz3wiabytzebckrowm2xbjr5grgavsl5brd@qtm7gw3sekwo>
 <339404b9-3216-440e-a312-aec3f5be34cd@draigBrady.com>
Content-Language: en-US
From: Bernhard Voelker <mail@bernhard-voelker.de>
In-Reply-To: <339404b9-3216-440e-a312-aec3f5be34cd@draigBrady.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:HEEXlZjJyHQf8/5lbJxJJaiYzLUeUFNSUxUp8N/0F4lYPq/4Q/o
 B+S9zx7V/ULbKEJdPM4TGSwN6QtiqM7JE9pFcNkDVlt5CvwafdRIHbuh6oendh8RQHe3GrL
 duys7Cm4YGOnwn4upiLFJhe99JuujRws6zE58+8SJb+4EPH6X0Fp9ILMaSr+//ab8wvyUTn
 ut0ohm8S0ODgs5A6i5kDA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:3WMNnQUM2nY=;1SoKtTge7kZT2e8ixN28oClJqPX
 DjLoXs1D9z7dKN2b7iLwIOEIeom23fuHQoUnDD6arzAac0P2Q14bojbqPE/cIHcFLSCwafE56
 p1uZiwdmSnsSc56J6ibqGN5+xno36nKMlGtiQk/mnjOYehI2chIb4GXBLItB5BXsNP0d8WmWZ
 pdIfgS3tBHGGRKKCptLPlJWzRL8yeQd9/VAHuNOffq+4nzVwJloNM/JCJJV0xlUt8NHOztxVE
 C7MGZPrcooD1z+YLgiooUWmWUl4Z/oBA+ObqEthOcEes/b+zLTmulIs3OmcnNQMpvRFOjsWKo
 XnMdeOBQ3v0GnAoIUTZDFNLJhCc6x99rYqnl2dlN+v/ZRYe068MOx2jOiMXb/9gp8nopVwIl5
 i63RPFIGOzntw6zSHcqibVjBnrYmVgRkCBZ02onYXb2s+JxdUHwpcsHpAid224bbzkDDg84/o
 zHWC/wc6SFwsptHiCHH0Kw2a4DsJtxthhPaqY2ESI5aNqOdzYDH2iGNlUFQ9Rs9Z9HmpkP+wq
 t4PhdwVtMnk6DPoIqh6ugglhTfSNDVHK5/YFUirh3RWAx3s/lBEbJ4gRvMBr9worx+OWcgrVS
 NBMIT+LLTB7PmyDPD2yMwVtFpslgmzYHXAul5Jj+KAVRK4+hRBi3nnNSLyny7kie80Rxc1T+G
 wdpFiCXqh73AUpsaeFvAwSQkHeQY+nfTUmYQYiq37ot4M63kGgwcc89n7bJuF6/UZAWE34yCB
 ZMkXsbRrTRSy4yqr+hlPKNOAdDkZKn1EU1BxtrCSO1v9SRDNj8iJw0Je3WysvjW+2M0z+ewro
 IVIsSHIUpXdUNIO1mZBT9Sc1FnH/NYRePKZIXZ4cgYrmxZDPkeenYjADZbggtJjWPpY3PXLcR
 SB5y8soXBqA3liAXj844xpocsK0WZvMw9URQnhfoKxhsaZXfzU1mOpXFWHG/uxqHV7hFugFeM
 yCC2rREA5GY09FZHTO5nLZyPOufeDJ9+LjBW3h8tSmOC6wMOpnS4NoVskyRnIKw6EKcuOtqMj
 d9TSkPKZXfPIBj1M2BI8NN6qIaJNLv8OcbJ4GSv5gj2VdNrVVzApLl6KR2k8AHzbilj16sV2L
 OJ3JkhRG7SK+BcU2fWvAo5EhP6eUg3SRjjqjmKPogHJPDWwKakwKtWVbcRZK9UMzQT4qCcpfn
 LzR9RawPgegNMW+Kk5hFIQzusxYmjQduCnm3PwSDlh1Tssia+uPikuAmZ6dMNRvoTroqa4bN9
 z0+lj6RqpfcYX8HnN3qt/uaHgVFrF/spy0t2GC4gtcSlgHPnk8xdhMlfJowrDxZXO1+unjhG5
 QUorhmvmFZHVlZM6mfmWmp4IAR7Rmo9V6iq/BYFdEqj2ANpHoox9RG/q+KgOcwqifApMLxP6N
 VChjKWsc5mJ01irOfjr8FKaoGICDIAhbsBGUY6rrk/9dvGCo2tis7LIXLXUcZ3Y0bSRMqGH5x
 5L8UNM2lXJUUu6ahM3u2a7c8kMWdtYH4GNbOcJ0cxoXp2i1l1n98sNURV2AG+d5l2rep01N4f
 EVP/DT57JJ6nwkPevnjxyu2Ctnn2yPFkJ7OGHE9w7ILxd3B6AxXSgMuIN3et2OFPn+bIQkObM
 1bXCSAT9MG02rn1/uqeTKlSGNfTKbm6/ZxVfYhCwPFnGEUtfjAW0B4qlCWPZnv8RtPW1iodg+
 I=

On 9/30/25 12:12 PM, P=C3=A1draig Brady wrote:
> We'll incorporate any improvements.
>=20
> Much appreciated.

yes, having people concentrating on the documentation is great.

 From a process perspective - sorry, business language -, what does this m=
ean exactly?
E.g. if we add a new option to the tool, i.e., to the sources, then the sa=
me
commit would add:
[X] tests,
[X] the NEWS entry,
[X] amend the usage() string for --help,
but leave man+texi left aside, and hope that the new option is not missed
by the docs sub-team?

Or do we adjust the texi manual as well, and only leave man behind?
Or?

I'm still not really convinced that having 3 formats for documentation (te=
rse --help
output, comprehensive man pages and the texinfo manual) is effectively usi=
ng our resources,
even with a docs sub-team.
There'll be redundancy of documentation in man vs. texi which yields a lar=
ge chance to
diverge, i.e., to omit details in the one or the other format, or - even w=
orse - that
the content of one format contradict to the other.
How do we ensure + verify that this doesn't happen?
As long as there's no "single truth" of documentation, and all the other f=
ormats
(man, pdf, html, info, ...) get generated out of that, I don't see how we =
could
do that.
And at least the given man structure (synopsis, ..., see also) seems to be=
 more
limited than what the mor enatural navigation in Texinfo-based documentati=
on (info,
pdf, html, ...) allows.

Finally, as someone mentioned: the translation results are linked somewher=
e into the upstream
release and the downstream build process.  How would that change?

That said, I don't currently want to think where the man pages are stored =
(separate git repo
or included), and it's more important how such a documentation change modi=
fies the
development process, how it decreases effort while still improving the con=
sistency of the
documentation for the user.

Have a nice day,
Berny

