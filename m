Return-Path: <linux-man+bounces-742-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D75048A3CB9
	for <lists+linux-man@lfdr.de>; Sat, 13 Apr 2024 14:45:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 038B91C20C52
	for <lists+linux-man@lfdr.de>; Sat, 13 Apr 2024 12:45:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 559C62110B;
	Sat, 13 Apr 2024 12:45:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ntlworld.com header.i=@ntlworld.com header.b="Jq3/XUDv"
X-Original-To: linux-man@vger.kernel.org
Received: from dsmtpq2-prd-nl1-vmo.edge.unified.services (dsmtpq2-prd-nl1-vmo.edge.unified.services [84.116.6.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2770C3C17
	for <linux-man@vger.kernel.org>; Sat, 13 Apr 2024 12:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=84.116.6.98
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713012321; cv=none; b=L8EVn977g+ZOXrjTBxJMZdO15Om/Dk1nrz279g/qiRHVkS1URgLJBkNJGNVt5EnNzLr9tgEfFtgBjTbm/Cm9k1oBbhEWioO2/nL3Sd1YomOOtjiHnYGCzxi6xGCkdBgOnId/thPFnceKiHn2EQoBTIFIs/FQFLdRtSFH35doBH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713012321; c=relaxed/simple;
	bh=cYKBT5pyYwutFZ4Jzlb/UiPIqQqxTpVBtVZqg1jx/QE=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=BPnKGu4f4rKxOeOZlRb8KVrWUni3v4PTq+ciGlZC8A5RBFHqpU8oaZKxAri5zfgtNm9GyxTA5PD3xnW69A76nB9J9KvdB4KU/p6XQo4s5Xifa5txqHNwEWSUOhmJvwXrGzYvxP2SN4DAfMT+mrFsZsBkmgLfsNdr9HmDgBaaCnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ntlworld.com; spf=pass smtp.mailfrom=ntlworld.com; dkim=pass (2048-bit key) header.d=ntlworld.com header.i=@ntlworld.com header.b=Jq3/XUDv; arc=none smtp.client-ip=84.116.6.98
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ntlworld.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ntlworld.com
Received: from csmtpq2-prd-nl1-vmo.edge.unified.services ([84.116.50.37])
	by dsmtpq2-prd-nl1-vmo.edge.unified.services with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <keith.d.marshall@ntlworld.com>)
	id 1rvcOa-0081C7-Il
	for linux-man@vger.kernel.org; Sat, 13 Apr 2024 14:22:12 +0200
Received: from csmtp3-prd-nl1-vmo.nl1.unified.services ([100.107.82.133] helo=csmtp3-prd-nl1-vmo.edge.unified.services)
	by csmtpq2-prd-nl1-vmo.edge.unified.services with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <keith.d.marshall@ntlworld.com>)
	id 1rvcOR-0019Gr-MO
	for linux-man@vger.kernel.org; Sat, 13 Apr 2024 14:22:03 +0200
Received: from [192.168.0.20] ([86.17.197.190])
	by csmtp3-prd-nl1-vmo.edge.unified.services with ESMTPA
	id vcOPrgr6jjP1dvcORrqKLL; Sat, 13 Apr 2024 14:22:03 +0200
X-SourceIP: 86.17.197.190
X-Authenticated-Sender: keith.d.marshall@ntlworld.com
X-Spam: 0
X-Authority: v=2.4 cv=fPs/34ae c=1 sm=1 tr=0 ts=661a78eb cx=a_exe
 a=wScuK7Wnu76PCkOxdTykCQ==:117 a=wScuK7Wnu76PCkOxdTykCQ==:17
 a=IkcTkHD0fZMA:10 a=raytVjVEu-sA:10 a=MEjK9-KKAAAA:8 a=SzYaiHQyVbneEHJ7N7YA:9
 a=QEXdDO2ut3YA:10 a=wDCLW6yMUrMVbYbmd6V3:22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ntlworld.com;
	s=meg.feb2017; t=1713010923;
	bh=UC+00oJNDg2g5qadp3cs5iwbAhVKFbS5eSkZqbgdTZw=;
	h=Date:To:From:Subject;
	b=Jq3/XUDv7RHdFK6BsTyBtMAopz5yDF6PV10w7fwHDroZw9kzuSt0wcBVTDzRPSAZQ
	 HOX63zBOaquCPhB2Rht2jzbOuKiNbRSFS8Yv1CB/etLyqWe2T35pIm79FRqknM1Xra
	 OlY1/4evhQ2iKLf7/tvbKsysuWm9BRbkcM5v7CYdfNwXxpniTZEMrYXIS21wtPhDKt
	 MIHBgp3EoTUDSNI3aaYyyBcKOKSmCv8l6pyXo/So3gBz5SvoskQSLDG9Xa5mQcKGOf
	 ehCg656yDHPEeej1gSptx0Simru/KzC1XttdTrH326J6wn8AsvNQ/6IEXWr9/WNf77
	 GxWkQhOdZlX/w==
Message-ID: <bcc2e2ec-32af-4254-a2c9-1884f28af407@ntlworld.com>
Date: Sat, 13 Apr 2024 13:22:01 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Content-Language: en-GB
From: Keith Marshall <keith.d.marshall@ntlworld.com>
Subject: man page style conventions
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfC7s6SkM50+rc4jbLOPNrgWmYXOyyUexEx2klFNU+8igwzeWwQ9JbGCWFzX4+el5/9aTxUkz5xkmSev7+ZEXbi+rE3wTOLyG3IEjfHtOXKBUDgG4gQgw
 4RYfOtANS8PP01XX1e3MH0XA0GY5hLLzdABxi7y9bojeKNFGNerJYoGWjG51GUjKc3G1FQsQ9cYe51ID8vZ8lB5BHkM5K/VN1OLNJbJUBrW119PZax4ChC7X

Hello,

In the man-pages(7) document, as rendered at:
http://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-pages-HEAD.pdf#man-pages.7

under the section heading "FORMATTING AND WORDING CONVENTIONS", and
subsection "Formatting conventions (general)", close to the bottom of
page 9, I see:

> Any reference to another man page should be written with the name in
> bold, always followed by the section number, formatted in Roman
> (normal) font, without any separating spaces (e.g., intro(2)). The
> preferred way to write this in the source file is:
> 
>    .BR intro (2)

I have noticed that, as of groff-1.23, both groff_man(7), and the macro
package which it documents, flagrantly ignore, and indeed violate this
convention.  I further notice that man-pages(7) document, from which I
have quoted, above, appears to have been formatted using that very
version of groff_man(7), perhaps with the intro(2) reference, within the
quoted paragraph, having been formatted using:

   .MR intro 2

rather than the recommended:

   .BR intro (2)

This leads to a glaring anomaly, within the quoted paragraph; rather
than the topic name "intro" being set in bold, as the convention
demands, it is set in (non-bold) italics!

In my personal opinion, FWIW, the use of italics in this context is just
plain ugly.  Opinion aside, it does not conform to the convention, as it
is stated in man-pages(7) -- either the convention needs to be changed,
by common consent, or groff_man(7) needs to be brought to heel.

-- 
Regards,
Keith.

