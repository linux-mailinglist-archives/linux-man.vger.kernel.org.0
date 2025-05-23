Return-Path: <linux-man+bounces-3003-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDEAAC210E
	for <lists+linux-man@lfdr.de>; Fri, 23 May 2025 12:26:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ADBBB178597
	for <lists+linux-man@lfdr.de>; Fri, 23 May 2025 10:26:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BA6D226D00;
	Fri, 23 May 2025 10:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=carstengrohmann@gmx.de header.b="ePmpMSgl"
X-Original-To: linux-man@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC9BB2F3E
	for <linux-man@vger.kernel.org>; Fri, 23 May 2025 10:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747995988; cv=none; b=E0Om7ZCTUs7CgG8fQleWoL/dR7VkRn6bpItKUjiqWLdoOEnvHTULqVp2pGJgO0C2qBdXi8IgOmOuTfD4btISi0QWAITXi63RfnEVTDNjrJGyCELt33aNkTNRsQFKcE/N6oqcxNWffJNNPvxrfJzLOAf4lKLtCOmzV3IqgKcgDU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747995988; c=relaxed/simple;
	bh=II/7TcgdLFSlkdr/3UbQrIcQ/qPRcYUKw3cK40nfI3k=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=eBVEwBp49bPwgL58wnC07NdYUsksxpMq+D/P7BDm0EiDXLeYYcrBDokhcsJK3qpsqzFFthlVmVKJSCF5WzAxU9Iom9o3Baisn32Y6GxE4SjivQHwzIqsXCBPanHANbL8046qJK3aMA6nZwWtvu7RdgAuL86lTB8ZP0KFeZ4KvZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=carstengrohmann@gmx.de header.b=ePmpMSgl; arc=none smtp.client-ip=212.227.15.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1747995978; x=1748600778; i=carstengrohmann@gmx.de;
	bh=II/7TcgdLFSlkdr/3UbQrIcQ/qPRcYUKw3cK40nfI3k=;
	h=X-UI-Sender-Class:Date:From:To:Cc:Subject:Message-ID:
	 MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=ePmpMSglvUNmBx/P0sJqunME3Q1+IpT8gUVgImhKSo84mJNHPKlZ65QJ/wNxe8lX
	 ZyNICynPbQNUwacODKdpInVO8L0gdgSWRj2TNVgzxF/HXTipGnemc6giFOYXsOs9w
	 zIpngvSdXNeQR1RLVPKcHdkWLTxX00yDbLXxw/2kUHam2T4ExVeEKpHFtgGqameK9
	 q8hvlyQAKVoUfSlMLIFRPmjPiLMOOLp0hquN+nGnsC9Aad0Jhjpcx6sHbmkLHIdjW
	 ruf4hXpO/Yq4o/CFGL4s9a55M6VPWZPvnCUhE2asEVZqu71U8T0mkBllpX5Oy62A5
	 oJ28MMjGujUbPpwf+Q==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from max.localdomain ([93.212.134.82]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MkYc0-1ump0u1b4g-00jQGP; Fri, 23
 May 2025 12:26:18 +0200
Date: Fri, 23 May 2025 12:26:17 +0200
From: Carsten Grohmann <carstengrohmann@gmx.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Extend shmem proc_meminfo(5)
Message-ID: <20250523122617.48cf9feb@max.localdomain>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:SOO0qyKkiiKr0gUO2cr6ereGB6JZpgdt92VjXMRzM7F3L4GgXt5
 8drgekO8DSTRvmcN5///ZyRR5qBqVJj3lZKVlIdmCqUNaf/ntTEPcf4v5GzS9M1F6XJm1ED
 G9suFLYCpHUQsYR7IokpsT3u9KgGypc/EuITnYkoxQrXRGZVJwsJ1oaf5B1W8wXsGmXUycq
 lZr498Tw8LeG4rSP/3bng==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:dmF4KVB+JqQ=;+QHxgTEajH19PZ12K3ZlLFoIB72
 GKoaoGQtBAo18A5n/UkdGYsfaiZbeplv4v0ZP3BcmOEzVy+/Mh70/G7i9i8wq4ixqHao+v0Z+
 bXNRBEAQXzuzZ+2RIh9uz5+s+zUoA/4w6LIHyOFWa5V7C2KAiW1HQA+QvgikviBJFj/9z8tWx
 NT0jajGhbAW1nWaLW2Qx/NOGzc6wUazjGrIUumBWKfqVo6dR0stMcQ5Hb66cm90isfT8poBd4
 g0WidMPcf3ndNSn7NnoxXffhTbjp9kGoxy3wCxpXTptYnfoPbB6E0WI5GU2DJ8NUjIFJfR4nz
 k3gWvLNze2c/U9RGlui/LI9FeJA+TdcONFH/uBpHBGP6MuM0qz9pLEKYgaOIlq7JCNSKtm9Lp
 Xv49brGHmZhOUl9yss2HdRxzuWqY4bGinwjz7LZmOPBhnqVW/RW/cdjxcD6MtiIMdAv8qkYDJ
 tKkJrzaWdTfkIUdyQ88SIKus7CKrBnHZ7QWK0D6qsBmemqcLQ4c7qotY+RrwcXbpCtN/81pxf
 XCLLxYr9eKUXpqEApWO54Vkw00Z2Hma4c8BEUSS8rOuEc8IzMv1pbwPDpnhh9t7qqdJ665IY9
 PGgdx/Kb9nikSY0BzmLW4murjPnFboZ9lCqpl2WaU9G4t6jvlNhmcI8jEIIExf81wHcw6aI3x
 hdjC5UuHaVPXKkVyuVjF6b//9gjkenKKsxC1Cm66RQtX96nrOkFmsqaCB6tWeDfjVNsUsroXV
 jULeOYcMVd+s1yFvvc8pqc1T2TWX7J+pwpuzte3zKDda10R4KPNNKCybNtNIJRmSPHHdBeZ41
 7yR/EU7D09K0D43gRyyf4fNSr4rnR1DQJ042S7uSMWTzi0TA6yIgddKbdEbKDQyO9COaPNepg
 rWcRV0vfMKY+BmBJ01FD9LXX17dbG6xbKMZlYFih4ZphTrCmznMSYQhqoMZf7QBXqeX7b2occ
 FqbMFXkpBVC3q7titZ0IQ81l/rgGV9mMoWjnpr4PpWq0AH4Dp3GWduE/RLUGqHfBSNbA12X6q
 8rPa2cAFZlLzLSKw+LwowAYJPNIkfkvYT0YWjukI9YgZzj5irnNtz70yVaBTjsEJs1RoOcGJF
 aYW0JkTH5hs7sBnXwbbUXvlg5sjQa5Il/TL36dGFoA7KRk/gx6FWlUWXBp439W+bDmL2x7vyG
 g5J/WvOJ3r8hC5eFA4MJhzBCH9L35LMgI7jokvJUoESTUOuzs3cdb8VmQcw8TFG67aC4MaEdT
 9NiBdyPn2lTtWJJJ02zZRrleN33QD712qksyF3MHTAHwgbj1QkPNymfSMPQpxY/ZhlUSDjw5W
 pbSCwqaBGYQnD4DODLhQAsqYgtnd25UN3ncnUnKPuYB43Kdd8ka/XVntMMVRYanYHJCF4Jn9/
 5/SJTo0ji8f4QSA8VF6hFWFDJhWJMzd8MM7WBJjv8am1Oplpca183N6mJsQdkUvTZ4mQ4R4qi
 b1WHKlZ9FpQV+aZkSI4yWRIOYr94iRGVfA5QC7ovCWqrKOMGq+aY7RL6RnCbbXeV9hrHYJACF
 hp3fG1LjrvfS4XhOIAdQyv243qQjQsgNlvwphnedTqXGO2tennPuWpOyt7gDMpLzFC+ArH+P3
 4jvX7RST/tuL+TmagJappr3bYDcZTtqzmkBuyrskH+OV30iRoZTlVGu11e+aZgh4ymFl4O3n/
 WldsndOPRMLODQbDA6vNI/zfjCdeHk4rsDhYEl/oaz7KqmAuCrU6c0KddC5CEUyEl5OsA0Aa5
 CXwgVSUUHrbhfeBOpXQFX0HSL69qoqoHXUSOVb+E6IolBhRZZqSm12wWs8B7mcWO2q7E0VbPX
 jwJ9j4a/3HKra2mzDtmTEcQAGyvRBMym39Wb9iQFAshWk5tZNDb2hKsm4e190hx4nU7EEmFNZ
 m3+/dfRX6QFKRzumFE8PrPLUmH0SMjRxLvQUALl4xJycChlN9IzYq8Z4ymi3huKT6sSkilcZK
 MopUMdKJY5XhQIi6HUkMjkAu+TSGsadnlRBNuzHMGfzv5VWb/VjbdepdD/OW6E0W6tsaYmrdV
 5bFwOK46TiYrMrsM/v37zhD63WccTZR7hWOYBYaAiCEJ7FQxiupNU3edGjRdS40pp6WyB1Bad
 I4OtjFghT0cxV+D1ewcIBHkB1zLgm5OOXQxYqhH/yJwDRM9jh/vNdZHxnW47RsUS7s0bWveKH
 1JPRb9CHlQHxY3BfUL0lZKb0nTiMUSh8mnGz5HCyHjpY+Ta2pe6Q+8xjpNc4Fa4z1N9ER2G3F
 cKELb/0Z5QgXhAx6mR+y1pgrBwpk+puCWUYGfV9kr0/7Rp+yIVcWReVa5Oza6UosSXmgDcZIR
 /7DeLsgeQ2BoGwynwPCmY8pBwDPhE5MhqzmZwPesGVJhwGnCfTWOS7PQgq0FtU3Tp34dgSvsW
 OnQFnag7raTbo97lH/pDPkSIAgbO4RC0H1TVa99VZpMUbpQWWpQcTjRoXCV60M1KMCbI9M0CR
 xkOrcq/Sik1BHBwXuRC9nSbFE866PKmLleZ3ZUGJ61QRmg06rWhH4h15E64GFCINo5e79r4wQ
 6R70ZnclKZBwVeEbECk6J7zzaQ8EgnlosAGUSYsrVn5pmKDcndzePFYuQHAmnZIZVMqmr0jgs
 dW0Y62abIQLBf8MSh0CjnCYpCg2ilw5BgNe9P9mf1Jl7rw+AAjJ34LkLLJAgqBpB7mCQJ5GG+
 75QUJ4mW3zb5aSccwwaG+B3kblsxUIqrNs9VprV3mwpo4miLbfVVd25USxR9GYmz30ip9090F
 breymhsNNoKh2uYKcF7ujn1mdi0B/H1yT/UXnH79aTxbNoOIrZVMzktjSltwpbm2q5KAwdsy3
 B64qcAYfZ2AE02nsRPngQ+BRu6JLGlB5lHkmIh6QHpAZBXebg3oNNs9K+JIaDxXHJrtBv+Qf3
 jG1p102ZK3BzSj1z0ulvBbh2OqSvpUVPygNFA1rP8SMljGGuxDo6mc+VK286hZeLwsXYPytRc
 yvWJR9dAyMfkthEcyDJpqbpLHMnrBZiYBO6N379PXNopMGk9Jz2yVppRCzs9l+yriXfZwCu5B
 Zx20NqTx2T5AuClvgPI/KU=

Hi Alejandro,

currently shmem in proc_meminfo(5) is described with "Amount of memory con=
sumed in tmpfs(5) filesystems.".=20

I think, that's incomplete, as the other types of shares memory are missin=
g.

Therefore, I suggest to change this statement to:

"Amount of memory consumed in tmpfs(5) filesystems, System V and POSIX sha=
red memory, as well as shared anonymous mappings (MAP_SHARED|MAP_ANONYMOUS=
)."

Regards,
Carsten

