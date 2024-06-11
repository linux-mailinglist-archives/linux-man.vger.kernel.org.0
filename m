Return-Path: <linux-man+bounces-1138-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C69E9046F1
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2024 00:31:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D998D1F254E6
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 22:31:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82621155329;
	Tue, 11 Jun 2024 22:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="ipo/Wj4k"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2FB115531E
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 22:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718145064; cv=none; b=PHOQs0NrikF1K6t7b3tIlqS+7yLs4q/gJQ7BQ3Cq4EmOpyATO3WRSM8wjK/MAUyN+gwUjtkojGPurFVzuuGaaHSDS9cJuk3m4i8IdV7Oej1OJVKjCH0b5TpS6OjlAPK4vCMoAOOP8wEtDrq12rxFghy0xQ5JnDsrhrgniXlu63E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718145064; c=relaxed/simple;
	bh=hjBMB6iIlwmSbqd7De80jaPcrUxct8A2KRtRiZhkqwg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L24QCNOBzsylh7THuqduFN9MqTf2EAuC10mcZrpk27af7nLiq+1RQ5FYabZ6BCY4dGf1Qy+emN/3OKYxrEmhPWTv7qnQ0VHRIgZrsErkqJ/Pfz8HpMLiaYocQbEJls/z8Bp9tlO3V8F5DRXmglRKhauuSck5d9iOTMDiYdSfQ1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=ipo/Wj4k; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 5218D3C00E8B0;
	Tue, 11 Jun 2024 15:30:55 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id s2PAanrvVXhS; Tue, 11 Jun 2024 15:30:55 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 098253C00E400;
	Tue, 11 Jun 2024 15:30:55 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 098253C00E400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1718145055;
	bh=8hDvMpGbvK31X3agzidA1caxMbzH1keq7ndCHpvGbg0=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=ipo/Wj4kEqOtCDdxeljJKXYbOF5xVUeSAezYSTQfpNKTzN/rqwdU3/Qg2hhJwdmxi
	 hNmZ8INs+lpykGJJocxaCcmedFiIud0g2Yy7gQMWTOhAoDAkjT8lbyPUekHTg/2/v1
	 vRKJnShDaaACpfsDQdiLPAduR2FV6jrkKorNUqWe2zacjoGPAIBXl1o761EruyoiCP
	 5bB6XBsSO4Wx3zX4VACDHjwYHsW0sh4HTjMWISPZbYCGA2YmyUpkOaflZ1PJ3AY3nZ
	 yu85X09k6rVZ93OEVdLB8C0LITjJivYITRBPLtCVVDDiBNbU+TuBVRV6MHdN4t5hQk
	 fbMXp9X7HtyDQ==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id QzXtUdL4h2Jp; Tue, 11 Jun 2024 15:30:54 -0700 (PDT)
Received: from [131.179.64.200] (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id E1BF73C00E8B0;
	Tue, 11 Jun 2024 15:30:54 -0700 (PDT)
Message-ID: <0cae0f46-3da4-48a8-9cd1-3632f92d3755@cs.ucla.edu>
Date: Tue, 11 Jun 2024 15:30:54 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/12] tzset: state vars unspecified if geographical TZ
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
 <20240611153005.3066-2-eggert@cs.ucla.edu>
 <j5shpmuai76b6lmdlhbhkhmp6elftrqzytkq5cuyujqbvonpfc@rdotn2xryam3>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Autocrypt: addr=eggert@cs.ucla.edu; keydata=
 xsFNBEyAcmQBEADAAyH2xoTu7ppG5D3a8FMZEon74dCvc4+q1XA2J2tBy2pwaTqfhpxxdGA9
 Jj50UJ3PD4bSUEgN8tLZ0san47l5XTAFLi2456ciSl5m8sKaHlGdt9XmAAtmXqeZVIYX/UFS
 96fDzf4xhEmm/y7LbYEPQdUdxu47xA5KhTYp5bltF3WYDz1Ygd7gx07Auwp7iw7eNvnoDTAl
 KAl8KYDZzbDNCQGEbpY3efZIvPdeI+FWQN4W+kghy+P6au6PrIIhYraeua7XDdb2LS1en3Ss
 mE3QjqfRqI/A2ue8JMwsvXe/WK38Ezs6x74iTaqI3AFH6ilAhDqpMnd/msSESNFt76DiO1ZK
 QMr9amVPknjfPmJISqdhgB1DlEdw34sROf6V8mZw0xfqT6PKE46LcFefzs0kbg4GORf8vjG2
 Sf1tk5eU8MBiyN/bZ03bKNjNYMpODDQQwuP84kYLkX2wBxxMAhBxwbDVZudzxDZJ1C2VXujC
 OJVxq2kljBM9ETYuUGqd75AW2LXrLw6+MuIsHFAYAgRr7+KcwDgBAfwhPBYX34nSSiHlmLC+
 KaHLeCLF5ZI2vKm3HEeCTtlOg7xZEONgwzL+fdKo+D6SoC8RRxJKs8a3sVfI4t6CnrQzvJbB
 n6gxdgCu5i29J1QCYrCYvql2UyFPAK+do99/1jOXT4m2836j1wARAQABzSBQYXVsIEVnZ2Vy
 dCA8ZWdnZXJ0QGNzLnVjbGEuZWR1PsLBlQQTAQgAPwIbAwYLCQgHAwIGFQgCCQoLBBYCAwEC
 HgECF4AWIQR+N5Kp2Kz31jO8FYjtl+kOYqp+NAUCZiLOewUJHWQLDAAKCRDtl+kOYqp+NHGE
 D/9Wmbk+cAaQsYLPGBvyzIjZIRzo/V2p3ZwckVA1VEQivx5azu1cs86qDoVIe45AtwmKOvdV
 wTQd/QeglkZR6D2YPW7UR/7emajyJZZcy+etVTDKoaw1i6/hmd/CpGjUeUSvgoPs6nYR+1lo
 pSXTpaGrh1W0qQHalSkOOwCHG3HtGk9Ve2AERDUYxmcn8/eZHb7xpUJEJMBBI1bx/zcw1EtB
 rjsQ1R1faJ/r/7LPAyV36RLvnbX69PylHKQEbJoaY9aUb2Vpm63ni3FeTA7/3jpPvaSRWHJh
 vPYx6Fm2Ln8pI0Yf/W2B8QMiPTnF/LnH2kvUcf9VXm+1mQJ3fBFU25HZwBhuqZ24IeKymPEt
 BUMQAum97Dto0jSgR2OUvX7z+twhpQEgRGBzPHYwDi4SxF5Z4Q5Y7B7a++HP9tIxG6CVFIwI
 4xVaZud18bPa0YBL+cISmMgxq7h7yoVXl6u3pm9Yiv+W6Lp9QGN8Rw1VuJMOoFCYuoxG8mXO
 TA5b1jvlQ32gHFFhqErDAhNJRsfgrpe9Gok4Ycp+rWljbvS5Wrl0uth5MP7FbaHN2kmTZibq
 KXAd//IqczhDyU6qnW6ao+h4iDBDgYgRbQjmToX/vmIdEMzvPGqWXKhe/q1TYMuOO+IfP+bI
 fyPFH29nVN/o9c4J7myeKvv3HKSXdSVjlh2V787BTQRMgHJkARAApoXrvxP3DIfjCNOtXU/P
 dwMShKdX/RlSs5PfunV1wbKP8herXHrvQdFVqECaTSxmlhzbk8X0PkY9gcVaU2O49T3qsOd1
 cHeF52YFGEt0LhsBeMjgNX5uZ1V76r8gyeVlFpWWb0SIwJUBHrDXexF67upeRb2vdHBjYDNe
 ySn+0B7gFEqvVmZu+LadudDp6kQLjatFvHQHUSGNshBnkkcaTbiI9Pst0GCc2aiznBiPPA2W
 QxAPlPRh3OGTsn5THADmbjqY6FEMLasVX8DSCblMvLwNeO/8SxziBidhqLpJCqdQRWHku5Xx
 gIkGeKOz5OLDvXHWJyafrEYjjkS6Ak6B5z6svKliClWnjHQcjlPzyoFFgKTEfcqDxCj4RY0D
 0DgtFD0NfyeOidrSB/SzTe2hwryQE3rpSiqo+0cGdzh4yAHKYJ+UrXZ4p93ZhjGfKD1xlrNY
 DlWyW9PGmbvqFuDmiIAQf9WD/wzEfICc+F+uDDI+uYkRxUFp92ykmdhDEFg1yjYsU8iGU69a
 Hyvhq36z4zctvbqhRNzOWB1bVJ/dIMDvsExGcXQVDIT7sDNXv0wE3jKSKpp7NDG1oXUXL+2+
 SF99Kjy753AbQSAmH617fyBNwhJWvQYg+mUvPpiGOtses9EXUI3lS4v0MEaPG43flEs1UR+1
 rpFQWVHo1y1OO+sAEQEAAcLBfAQYAQgAJgIbDBYhBH43kqnYrPfWM7wViO2X6Q5iqn40BQJm
 Is58BQkdZAsMAAoJEO2X6Q5iqn40Q68QAJ9GubS/ej30Vc4idoZdc0IyMcL7kQJbMohF+Tyn
 ZE+TGn9WvzP10yLyzoI0vNlcNfP92d2MS//pFjOuANb5mwyiEYA+rDZIdS4ZZpHxCs2sxMC4
 afLCf3kv4aMnTeBvb9na403dlczz9cAacvsmniSFdpb1+BzMpYbybglU5oYMGhYT2nnCRjXN
 6S2nKYt4mjJeeOuxHrdeqQQdVBNYeNfTcPePeqvZ2+bD6u9yxZtaV+wxdpqglosQvjqhOYz7
 h50/ZTSq70/npoCq44TzdJKttaYvlW6ziRz0g4RRAqZyoxjYXiy5qj8r8zXJuB11ApZCGuKn
 /usbji9RYbflAhxFeh4LMmpDVi6BrF30b73Md59K7PuEKN1NxzlWiqqQHZZ9momN0GXLPcGq
 4uyfq7yVEy7wP5PMOh6oqscKklE3gFQtq0P1Ki0xqdF6Fq5LPJc+0Db2CYkVIy7Xaa/f74I3
 sOfQfEeDylVXR5iDfUJEYv/0DYhOr7q5/0b1kh3M4wkrB4C5jVNHjIIj+RsAK90c3t38OhAl
 jiSN7Bkwy24Afy8eIu6wWzvhnsQGpZPB+IffmxT1wkTy8UxZKjUWV0C82iphVgCUUi2f9sDV
 Q/tNcwVWmOS+gdv9Wk6tdGeM+Ee+Qs6YG05jcSoajzF0TL07ajLcayRq2j1Os2CtQ8qu
Organization: UCLA Computer Science Department
In-Reply-To: <j5shpmuai76b6lmdlhbhkhmp6elftrqzytkq5cuyujqbvonpfc@rdotn2xryam3>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/11/24 13:53, Alejandro Colomar wrote:
>> +The
>> +.BR tzset ()
>> +function initializes these variables to unspecified values if this
> Can you confirm that the wording is precise?

Yes, see:

https://austingroupbugs.net/view.php?id=1816

> If it initializes to unspecified values, I guess it's legal (IIRC) to
> read them (even if useless).  Am I understanding correctly?

Yes, so long as you've called tzset either directly or indirectly. If 
you've never called tzset then it is a gray area (are they initialized? 
it would be strange if not, but the standards aren't clear).

By the way, a FUTURE DIRECTIONS section of POSIX will plan to remove the 
variables (see the URL above). Perhaps you could add a FUTURE DIRECTIONS 
section?

