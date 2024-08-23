Return-Path: <linux-man+bounces-1680-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F3AF695D550
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 20:31:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A81681F226BE
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 18:31:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B57039FD8;
	Fri, 23 Aug 2024 18:31:11 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from relay.hostedemail.com (smtprelay0010.hostedemail.com [216.40.44.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 771085695
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 18:31:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724437871; cv=none; b=AeM6mEGZzkbQrKoVgZ2bjsPxSL0INSqJFururbi6PsM4SmjnhNNybppTTkDW1J3b0P7IDsmt0AdhLQgSFgS7jPXI7MUwNiC6eF6BUaf176F0JSSPy+JfIFPinAKsMaTscdruY7Xa9iaIcnPz2YY5BGwr9uDhhJCH9z4af6lOE18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724437871; c=relaxed/simple;
	bh=Uj6bm6TizaBN3tivJK6LAGBmir1HKh9AZa4f/jmgA2w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NuIGXJvbGluulX1NXnaJWQh/eB8CIV2xKaJL4R7Q6tfb4Z3C0cTOL9dXz9IfrcvqnYVlb2ANzqSyZj3loCscBb/WkdVNG63uZF3hp83ZqVpr/B4rhazesKWVFI5wmiIXC5QeM2NYcHZAksYtgOwXUxFQr2usx+VhAWHceYSxBrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=SystematicSW.ab.ca; spf=pass smtp.mailfrom=SystematicSW.ab.ca; arc=none smtp.client-ip=216.40.44.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=SystematicSW.ab.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=SystematicSW.ab.ca
Received: from omf17.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay06.hostedemail.com (Postfix) with ESMTP id 1A057A6E7B;
	Fri, 23 Aug 2024 18:31:06 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: Brian.Inglis@SystematicSW.ab.ca) by omf17.hostedemail.com (Postfix) with ESMTPA id 6797118;
	Fri, 23 Aug 2024 18:31:02 +0000 (UTC)
Message-ID: <e6395fed-ec28-41a2-bd48-ba6db2389a85@SystematicSW.ab.ca>
Date: Fri, 23 Aug 2024 12:31:01 -0600
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, carlos@redhat.com, dj@redhat.com,
 eggert@cs.ucla.edu, jens.gustedt@inria.fr, libc-alpha@sourceware.org,
 rcseacord@gmail.com, vincent@vinc17.net, xry111@xry111.site
References: <daswt7u6tvj7mq4x5ntjzel5cspkyfmkphrtvsdsywoaalhrgh@7s2eedsskylp>
 <331b41ea-dce5-414d-8588-9e4e2a59dedd@SystematicSW.ab.ca>
 <jqdmfoxuecuevujyv66eyzg3xsvfhou4hhvvi5bachy4dujnhu@gwcgwegj7qml>
Content-Language: en-CA
From: Brian Inglis <Brian.Inglis@SystematicSW.ab.ca>
Autocrypt: addr=Brian.Inglis@Shaw.ca; keydata=
 xjMEXopx9BYJKwYBBAHaRw8BAQdAPq8FIaW+Bz7xnfyJ1gHQyf2EZo5sAwSPy/bRAcLeWl/N
 I0JyaWFuIEluZ2xpcyA8QnJpYW4uSW5nbGlzQFNoYXcuY2E+wpYEExYIAD4WIQTG63sbl+cr
 2nyOuZiKvQKcH1E27wUCXopx9AIbAwUJCWYBgAULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAK
 CRCKvQKcH1E276DmAP91Bt8kfJhKHYb9b2sao2fxwJFsl1GlRi516WKI0OkphQEA+ULITsPs
 blfzSq+GgI7q4LPfRfTLy4Oo3gorlnhnfgnOOAReinH0EgorBgEEAZdVAQUBAQdAepgIsLwm
 GQicfoIBaB9xHp63MQJqVCPbgPzESTg7EEwDAQgHwn0EGBYIACYWIQTG63sbl+cr2nyOuZiK
 vQKcH1E27wUCXopx9AIbDAUJCWYBgAAKCRCKvQKcH1E27+zoAP4u2ivMQBAqaMeLOilqRWgy
 nV2ATImz1p2v1H5P4kBiDwD3caPK1cxU5lijzuSDCjgtIpgF/avHbjA32fxJdIRwAA==
Organization: Systematic Software
In-Reply-To: <jqdmfoxuecuevujyv66eyzg3xsvfhou4hhvvi5bachy4dujnhu@gwcgwegj7qml>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 6797118
X-Stat-Signature: u1w8dnrew41dr9nnk61ua3a47fs891yu
X-Rspamd-Server: rspamout08
X-Session-Marker: 427269616E2E496E676C69734053797374656D6174696353572E61622E6361
X-Session-ID: U2FsdGVkX18aqsl58eN0pUF7v7NbKFRNnTRi8iOMQg8=
X-HE-Tag: 1724437862-164648
X-HE-Meta: U2FsdGVkX186V6xnLurGyicpB1paJSn2rQRuByC+1qBpYquDym6SAqarR6JMSAp2hTpI+SgfZBgioBniTd94jOQI26WPZMoCEfGWJhkxt0SswFVah63wlrwK8ypweynr8Wx+JDiGRRfZeuClAA01kUVat3JKifB2AyzFl0nxtXbqp3qPCphDTc8FoDscAbMW3qFOMxhN8CE46qOVZPipRVpp4NlHQ0bzFIIhXtio0XIGHHgZLufCFQYM9V95Y5c1SaUd2vA63zkQArk7ZJkXY30HbZXxeYb/LRQWaZGezhGXT6ruS7JzBCUfVkqQJZn/Btyte8lstNB1OCjICZ67DjRl23MLy9M/N1VL0WCw2Lx+hINxR/ZkVh11OO7pYHUvj2qI0tB/8tYbfGjf+8wZ2x8c5WlFZZe1eorE5fK0L70ysQv70cES0sheYKk/xu8tK/WeUQmTQBCdtHDmgp/UABnccPX/thoLs6z6RRnLvPg=

On 2024-08-23 08:25, Alejandro Colomar wrote:
> Hi Brian,
> 
> On Fri, Aug 23, 2024 at 08:04:20AM GMT, Brian Inglis wrote:
>> AFAICS from 9899 1998 Draft to 2023, the *mktime* wording has been essentially:
> 
> I find the above confusing.  What is 9899 1998?  The draft is for
> ISO/IEC 9899:2024.  There's no 1998 in the name.

Sorry for the typo - from the original *1988* Draft from ANSI X3J11 88-090 
1988-05-13 of ANSI/ISO/IEC 9899:1990 through 2023.

>> "The original values of the tm_wday and tm_yday components of the structure
>> are ignored, and the original values of the other components are not
>> restricted to the ranges indicated above. On successful completion, the
>> values of the tm_wday and tm_yday components of the structure are set
>> appropriately,"
> 
> The text you've quoted is there since ISO C89.
> <https://port70.net/~nsz/c/c89/c89-draft.html#4.12.2.3>
> 
> And that is not guarantee enough.  It says that wday and yday are
> ignored (for the purposes of determining the return value).  And it says
> that on success it modifies them.  But that text is silent about what
> happens on error.

It states they are set on successful completion, and implied left alone if not.

> It is C23 in 7.19.2.3p3 which provides a novel guarantee, that those
              ^^^^^^^^^^
              7.29.2.3.p3

See "WD" https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3220.pdf#page=415

> fields won't be modified on a failed call.
> 
>>
>> so the recommendation has been to do something like (pointless example):
>>
>> 	time_t tt = time(&tt);
>> 	struct tm *tm = localtime(&tt);
>> 	tm->tm_wday = tm->tm_yday = -1;
>> 	if ((tt = mktime(tm)) == -1 && tm->tm_wday == -1 && tm->tm_yday == -1)
> 
> This conditional, just like the one in the POSIX 2024 standard, is
> redundant.  Reading tm_wday is enough for determining a failure.
> 
> Otherwise, what would you expect if tm_yday is 4 but tm_wday is -1? Half an error? :)

Checking both are still untouched guarantees an error!
If one is set, it's a QoI bug, not an error ;^>

-- 
Take care. Thanks, Brian Inglis              Calgary, Alberta, Canada

La perfection est atteinte                   Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter  not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer     but when there is no more to cut
                                 -- Antoine de Saint-Exupéry


