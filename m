Return-Path: <linux-man+bounces-2356-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 109BDA2D887
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 21:18:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B746F7A2FC7
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 20:17:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62E1C24396D;
	Sat,  8 Feb 2025 20:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="g61WUeJn"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE8B3243948;
	Sat,  8 Feb 2025 20:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739045885; cv=none; b=rdStrX1AyOWZdCddIfM9GbJb0xmoUxzk6JwvtKE3zQ6EQJEFm3MjQjg3xfoRT0j7wYHshqvLXdo4o2SMtoGmXGZWQnVjPZKzVUG5O8sMl9b5xYc5RSK0VbadQj8648Nsho9ElOZmFSXZ3VY6mqi2EhrTTDog2RqMpvyxa/lA2AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739045885; c=relaxed/simple;
	bh=CevV6QtVDEDA+JCIBQ4l7AjIVkV45HK5HSCYkmUjXJA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IV3w6V7lDrj3nzSP80drakjKAUv2qB7WuBmJ1qt/8vtK2wx7/JT7KAqbcp7DvJiIZ2zJdcd2wcztVCVss/16H2nMf7Pv4ydtEyPR+HzHocHqPxmxHfHwXdS+bSxgESu+CLuSDi7MRCDxuXgn+gZTgHRrycVuKMD8n6hYRDD/BAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=g61WUeJn; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 7A6903C00D402;
	Sat,  8 Feb 2025 12:09:42 -0800 (PST)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id gBWfwZM2z4Ba; Sat,  8 Feb 2025 12:09:42 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 0C0523C00D403;
	Sat,  8 Feb 2025 12:09:42 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 0C0523C00D403
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1739045382;
	bh=aZVY0UkNtIF05ETRf6E0NpCXnN7tLM7TYXWO1PkPKsU=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=g61WUeJnkogacVCSd20c442aPdLEjfgaw1nJ3C8mXVk+BUZiJaLRZ+4PCiVRUa+GR
	 p1V86bkVsPw5W2HHyPQntK4WZW/OnTrzemD/ZzWRO32p1h6a2gqrblNDBQ0byAOxDY
	 G+ui9GNZTfn7Q7T8nYxeWb5yQWVG8biiacnf0HKq1mWGg/M1cDQ/r+IjDl+SZ5gnrw
	 QT5DK+TzEnpMh2wQn+19x37MqKeq0PMjNUYhL+ea5MIbbNqfNstTybD5r757wsK6q1
	 BUQ+gqHpFI8bOmhpBn730i5JRJBO8hvvVjD+Bps6bDSRujNFSulOYYLYpcKPbBTS+s
	 LFJsT3qetY6sA==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id bU5GsKWo7NWy; Sat,  8 Feb 2025 12:09:41 -0800 (PST)
Received: from [192.168.254.12] (unknown [47.154.28.214])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id AB91E3C00D402;
	Sat,  8 Feb 2025 12:09:41 -0800 (PST)
Message-ID: <d00561e2-145f-42e0-8fb2-5ca3556afac8@cs.ucla.edu>
Date: Sat, 8 Feb 2025 12:09:40 -0800
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] rust: alloc: satisfy `aligned_alloc` requirements
To: Alejandro Colomar <alx@kernel.org>
Cc: DJ Delorie <dj@redhat.com>, Eric Blake <eblake@redhat.com>,
 Will Newton <will.newton@linaro.org>, linux-man@vger.kernel.org,
 Danilo Krummrich <dakr@kernel.org>, Tamir Duberstein <tamird@gmail.com>,
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
 =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Benno Lossin <benno.lossin@proton.me>,
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>,
 Trevor Gross <tmgross@umich.edu>, rust-for-linux@vger.kernel.org,
 linux-kernel@vger.kernel.org, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
References: <20250202-aligned-alloc-v2-1-5af0b5fdd46f@gmail.com>
 <CANiq72nH3N9UMu2hsPG7WfYCZQwy9M_4q_rQHJnJMScQ3D9-Jg@mail.gmail.com>
 <Z6T5sOWXxmUsflW7@pollux>
 <CANiq72n7jx5ve9UL3oDD08=PjY55QHoMY8fyfsW9RNEvjH_b4Q@mail.gmail.com>
 <Z6UGNbowcvqTN0-T@pollux>
 <CANiq72=BGFp95jyyF6-uQWT8K8dS5qBpBD55duUYpF4hJDbFxw@mail.gmail.com>
 <kfkku4rjsktgkufkuehliojv3izxdutc55inmv3yvenu33zr7e@lluedzjnqnki>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <kfkku4rjsktgkufkuehliojv3izxdutc55inmv3yvenu33zr7e@lluedzjnqnki>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2025-02-08 11:19, Alejandro Colomar wrote:
> I wonder why glibc silently overaligns aligned_alloc() without reporting
> an error for an alignment of 2, while it reports an error for an
> alignment of 3.  It doesn't make much sense at first glance.

Why doesn't it make sense?

If the underlying memory management system supports only some 
power-of-two alignments including one alignment greater than 2, it is 
easy to support alignment of 2 by overaligning, but it is not possible 
to support an alignment of 3.

