Return-Path: <linux-man+bounces-2719-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B45BA782AC
	for <lists+linux-man@lfdr.de>; Tue,  1 Apr 2025 21:22:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 91C397A1B37
	for <lists+linux-man@lfdr.de>; Tue,  1 Apr 2025 19:21:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A22771E0E0D;
	Tue,  1 Apr 2025 19:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=web.de header.i=radisson97@web.de header.b="uInbka+g"
X-Original-To: linux-man@vger.kernel.org
Received: from mout.web.de (mout.web.de [212.227.15.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5336EC2C6
	for <linux-man@vger.kernel.org>; Tue,  1 Apr 2025 19:22:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743535370; cv=none; b=hIqScc8Qr6MKuNus7E/qti6+og2A1CRRdZmTtJsywuRaaGSUJSDlLlOkwQAADeifJrmDrwzAHbpkMOrKZbYgyjCUX5KicN9Sws+wptIeCUBfbOOjXT9lFvIoEMVB7JffVRM4nxTXPv17jLuhpQDkurAtjoeDqeXSxdjkqEPd68s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743535370; c=relaxed/simple;
	bh=IAFdYPxe3tRXpS2ost8X45GnUxziIh3CdayyZkOqsgk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=se44dSNO2d9XBM6xxxJ5Xz1tGXlwrLMkFJ9ZU3fwME+f8qtLvFs0HjB7EzP63QtihMojm1ftjHJQIrR4yBP0hMPEvdtl9p4WV07WntyuJc4JwxxqUlQ5lmsApAvoZMCVgdOp8VMje2s1RrZWrtvDXA1Q0R2P7NNOMv7vpLKvq24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=web.de; spf=pass smtp.mailfrom=web.de; dkim=pass (2048-bit key) header.d=web.de header.i=radisson97@web.de header.b=uInbka+g; arc=none smtp.client-ip=212.227.15.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=web.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=web.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1743535357; x=1744140157; i=radisson97@web.de;
	bh=0cjFicTCj98omb4ZPp53sj1yDM8wb7ctaYaB3IZXjA4=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=uInbka+g5hxa0DuwEQjoJiELGZj5bwcwk2KiWp+wEknWdU12iKjJu7wnw1mObLbn
	 7b9gzXLZFknA8qIT1CkWyR+0FfaYHgB1fFPehG5ZUcNDrEpSCx7Jg84yf162Qgs4y
	 KtxFl/XJ48A83KVoZvxwJdW0iZ8hYj9c85d67VcfFxQi7Dt5l9EIseI59X9oRaQFL
	 qAqnotlbMRvR6zLZ7YWBAsYmxpn398GtXuuVrvn/9jLAsduex03SFSGT7ok3RCNJ+
	 PUEugT9woU1g9nc5KaoxVhWoNtBLJk/GwoU2t7DZpMLbhb3Wzf1aJWDlDmTTTsnaa
	 2sp1Ka/1VMbS0A+JNw==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.40] ([90.153.36.207]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MS17v-1tXx1a1gNv-00QGxY; Tue, 01
 Apr 2025 21:22:37 +0200
Message-ID: <7fd816fe-e504-4f8d-9a67-ef7e11c39f24@web.de>
Date: Tue, 1 Apr 2025 21:22:37 +0200
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] make consistent example in recv.2
Content-Language: en-US
To: Alejandro Colomar <alx@kernel.org>, Carlos O'Donell <carlos@redhat.com>
Cc: linux-man@vger.kernel.org
References: <189ef077-18f4-43a3-9008-286a75e7bd91@web.de>
 <292e1d29-48f3-43e8-9177-0238d0d91cb8@redhat.com>
 <76g2kv7eelfyiovqsz5xnnxr3x3njekxtgjiedqk6at7kzdm27@jtmzp2fhsgxt>
From: Peter Radisson <radisson97@web.de>
In-Reply-To: <76g2kv7eelfyiovqsz5xnnxr3x3njekxtgjiedqk6at7kzdm27@jtmzp2fhsgxt>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:jacehQrYganzH+iC9Mp8/dpZBUp8DowKApSYqSQY1oL4+u9vcqQ
 OlFi4Bknu/P8qL6aBFGlAPMnjKm5zuShdSu8Ule2HdvYxrJUBsTygVT87CeYbv69qd2AJHo
 gZ+Se1sBfuUd5YwGo7+xE9i95GLsuakpPG2I06RtAD2xvwlg00kjx8UsPoYl2sY+7t8E1Jy
 IGDb7z2VpMULDhXqHqEnQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:YRnnTx5AF5g=;UM6QgqUjSrCy1DGBjJfubDj//ph
 q67k4mKMNI69EjVv0YPQSQh7O9on7WB1jetbAXSI/n5pyV9aCkzoHF8ZZTgmZ6Sy5MQ2fGyqg
 +GzdMzdZjpwerYL/Lkduz07+27tcEiyGDWuA7rKvbvw0ftVgQswXIKttNhWRQlvAnT4woozrm
 NQsx96jmCbCLd8n4HGFKG/EShDE32kRxrdcxNGyiuJv2blKA1/cd7Fv8WglkLPyIS9lsJt3RW
 t5J2XTEso0KLEcfLMAphn3QW0HqZFLO8u0mzOboBegc8Hhl/o+m6ziQtFJMHLJT974Bjl1WA/
 3uF8HhKE+iJrRxzVfjMqVG8P28btQsBu8xDuFz7bnTRuDZ8a+R4W5wenwEM2LBlTsRiC+8I+j
 VgoWAfy65Kz1FFzUiSt7TqXYJpMV2oIxkSbrBquWYj8sWmiF2PY7JX3pry8koBlLudMHRh3hD
 DaaPTBa0oqXfxXr90lIf/7M8ChQD5hqv5B6bl45reFcr6k23FU/81cBOL276XpcydkKNwJqJp
 jvKjYNl5BLf1Ys8c3SXtuGi9ZoPTGoNPcZBu3S0yDy1i+2d2BnGJrWYeM8V1XHcFffrsrSBE/
 8L4BJ69HVSsA5iwwJKH/TW18I7zggxzKR/DAwoavoQdOAYpcGuI09YfxaPa2a6dZgzlkVAwdH
 7Z7d4vn2uRQSi86IYDka5uml/3I1ICDvt0lhJVPQL//PNlUW1Ie7NzL6/s6RtItLZzH9yS48S
 AVDrEYO5xa/yVVKMwMm9Jm0AsV9npb0vVOXYRhQkSxzKWKWtgE9vNPw6SKhZ6zLVgIHjHdzsr
 D7rczMpLekkE5aD+FNL8gl4TsoJU3u+RFC3KN8VA9crxPLUw6aSY9jI1r3copy6x6XdLqzBLA
 RKwf4b/3rexumpYe1R4CaNXnkMV1RJngOV7jPbHU7FBVAN3ztuZhz34t7ocI5nX7+9eFmX8n4
 s25/QlfHMFLlWIU8CdXUdxfPTHAlDOlmbT3nG/TAmppHpJaTqz/0QfF2SVgq8sIX/Wj0btw9x
 +sgh4cfakWjDow0XxlRKGsnorjTOLh/CFVLXORyJ3a0LGntyCmhdpMnxWCia71r3ulX5efm4u
 IDPlhEwFqu7hgv2sNJLX2jysXAIEWRlBmJvAjgCWXEGdkpDjTzgI+9Jh9X+AB1G+fwonzKp3Q
 Bvzc2QGsbAynVvbUn9yY1n6pLfw97t5GSy+PALbm+Wthbs9hVVYTN/6S4mwJtNCfoibL787MG
 e/TNa9WheOvMos1m+rJ5kS8PLnZXUvDT6pRghlCrGgT32AjslhcsSWWxm19gyxD1Q247tKyjV
 9Bpd7GLzW7MpeRzajS9nnvP72lywkBi5GMpLIURF4bpoFv3OUSQPpn4X7YSHBB1XInWQcRJzl
 t1cTyD6/gHtziWqveLuVwboqM8qbP0SmH2PTp4KfPupuJ5G/8izY1RPbrz3O+iH6pOPWcyrZu
 eIacml8IMz2vX3SlMbxbOWrNU3YU=



Am 29.03.25 um 19:30 schrieb Alejandro Colomar:
> Hi Peter, Carlos,
>
> On Fri, Mar 28, 2025 at 06:53:52PM -0400, Carlos O'Donell wrote:
>> On 3/27/25 1:54 PM, Peter Radisson wrote:
>>>
>>> Replace 0 with NULL als in the example a few lines above
>
> Thanks!  I've applied the patch.
>
> Although, I had to do it manually.  It seems you have an old copy of the
> repository; you should pull the contents.
>
This was not intentional
i have just checked my source was
  https://git.kernel.org/pub/scm/docs/man-pages/man-pages
but it seems i was accidently on the wrong branch


> 	warning: Patch sent with format=3Dflowed; space at the end of lines mig=
ht be lost.
> 	Applying: make consistent example in recv.2
> 	error: man2/recv.2: does not exist in index
> 	Patch failed at 0001 make consistent example in recv.2
> 	hint: Use 'git am --show-current-patch=3Ddiff' to see the failed patch
> 	hint: When you have resolved this problem, run "git am --continue".
> 	hint: If you prefer to skip this patch, run "git am --skip" instead.
> 	hint: To restore the original branch and stop patching, run "git am --a=
bort".
> 	hint: Disable this message with "git config set advice.mergeConflict fa=
lse"
>
>>> ---
>>>   =C2=A0man2/recv.2 | 2 +-
>>>   =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/man2/recv.2 b/man2/recv.2
>>> index ba17d03a3..21f65e86f 100644
>>> --- a/man2/recv.2
>>> +++ b/man2/recv.2
>>> @@ -325,7 +325,7 @@ socket (see
>>>   =C2=A0.BR connect (2)).
>>>   =C2=A0It is equivalent to the call:
>>>   =C2=A0.PP
>
> This context was changed in
> 1ae6b2c7b818 (2022-03-20; "Many pages: Fix style issues reported by `mak=
e lint-groff`")
>
>>> -=C2=A0=C2=A0=C2=A0 recvfrom(fd, buf, len, flags, NULL, 0);
>>> +=C2=A0=C2=A0=C2=A0 recvfrom(fd, buf, len, flags, NULL, NULL);
>>>   =C2=A0.\"
>>>   =C2=A0.SS recvmsg()
>>>   =C2=A0The
>>> --
>>> 2.35.3
>>
>> Agreed. They are both pointers. It should be "NULL, NULL".
>> It should also match the text under DESCRIPTION.
>>
>> LGTM.
>>
>> Reviewed-by: Carlos O'Donell <carlos@redhat.com>
>
> Thanks!  I've appended your R-b tag.
>
>
> Have a lovely day!
> Alex
>
> P.S.: Please use <alx@kernel.org>.  I don't use my @gmail account
>        anymore.
>


