Return-Path: <linux-man+bounces-2264-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 268FAA1692E
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 10:21:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 30FAC18840D5
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 09:21:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0511619D8BC;
	Mon, 20 Jan 2025 09:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b="IiKU56P0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtpbgbr1.qq.com (smtpbgbr1.qq.com [54.207.19.206])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457011AB6D4
	for <linux-man@vger.kernel.org>; Mon, 20 Jan 2025 09:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.207.19.206
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737364893; cv=none; b=Ilu0T94Lb3NLbCYlzIhssvuYc4pRIQQvcXNFBstNOI3U1HnuOk7/6AEsBkTaYa/Nh+ddk5rVyYc3+yhMPJiMegHzdpkclxmnKbyREoSDfHLjJ7gpETRXLYRfPkWIEwvmjUlbd8vhD3gHqooZiTB/jfpqHO6yE6me3Bft5P6Zwc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737364893; c=relaxed/simple;
	bh=jFm9Hi1dAsrUpS/kZeEEhEU19J+TcGs9NldOcB9Eht8=;
	h=Message-ID:Subject:From:To:Cc:Date:Content-Type:MIME-Version; b=cLdVUAmEMXXDd47X51gNXJ12mrurYDLpeNieOmpXLTdlspMjlSVQ0d+pWpsgit8jm4uQ9DpCCQ6feLXlX/y/G9kK9oaUClrhb7IQkZl87TNON0WoTWDhzGR438M9pv2QtSLTlMLGCcrmjHf2AiWxs4Eu0UTvqfPQZGJ+HEe/7F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com; spf=pass smtp.mailfrom=uniontech.com; dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b=IiKU56P0; arc=none smtp.client-ip=54.207.19.206
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=uniontech.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uniontech.com;
	s=onoh2408; t=1737364858;
	bh=jFm9Hi1dAsrUpS/kZeEEhEU19J+TcGs9NldOcB9Eht8=;
	h=Message-ID:Subject:From:To:Date:MIME-Version;
	b=IiKU56P0FZySRUtcNR66G+2iuEhRAjNS+w2xcHtAXJBbQSQzyhnxJYrpRWc7NtTsw
	 yPusv6uiYGR3o75rnY6MfDRw3cIcMExvPp7lpMYeko0LisD7M7NvuJ6Zr4u7c0tTOZ
	 MmOQOQ4ofm9hyHJeyT5caNqQV4wZSsSlyoMwB5Co=
X-QQ-mid: bizesmtpsz4t1737364855t19m339
X-QQ-Originating-IP: dwOFHPkybseh5T8TkU0s3GO66dqTyPVOVmw7yTikYQk=
Received: from [10.20.53.121] ( [113.57.152.160])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 20 Jan 2025 17:20:54 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 10979868328934859203
Message-ID: <0FE174BEFC4B0385+2930538d0fd26e9b135e20d69c75590ea6237435.camel@uniontech.com>
Subject: Missing `munmap` in clone.2 example code
From: Chen Linxuan <chenlinxuan@uniontech.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Date: Mon, 20 Jan 2025 17:20:54 +0800
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:uniontech.com:qybglogicsvrgz:qybglogicsvrgz5a-1
X-QQ-XMAILINFO: MCiK9DnWZEXsEHOBVUKWX83PpcRzxH+t5k0efpxCMxQgm+d6PEgmvLoj
	2+HnjjasfBLczf+zisDfcJj/GshvqvQ/mZzLH1f3JqRtHkdQ+GvT8bTUDq2nHi6ki8DZ/iN
	14I8Dq9iUe04ICmsvJw5NKaiIdau1piXUwqzzU6LOFQ6MulABP8Hr8ynIFEtrOkjsqZQUie
	hPykIb/njnv4D3zRESLQAmtTeChiciQnOzzjCwv1VSWRPYcf64Ly3Ta+XmiKbSZW27I/qxV
	ne0WAww0f82kJ2Hsz9kYmynwJKwzBw+NNVNI5FRrKJkgzJtF6mxLgwvX/5Ytq1YThxKeGo+
	/hA14nLs/SGkdX9jxA0hSp4dfIFKEz9FaYR2XgCyOiO7afkmp9kZjfvlBEZ6OQniAmP2FLY
	o5LXRVrisS+V1UNKF0SO4/rrQbdUehshhcKB2OBUFWzzyJCLt+aIMhj2YWlDewE4toBRBul
	9y5iEVWeqKZbASgMyy33Lt/9Vl/y+LqAhaW+3Wsn6HcdJ8iYtmqLOQayVOc/84UQ5ph3Wkp
	gaM6FjOlFsusMzqXv6qWWxj35yC7SxA8BTId4x3k4mm0neb2Tb4U72WPv7UGfogeQzlHVTS
	X6V26CU84cNb45dYahx00i8tLxRmjv/A2Q6e9cW9vg/azPGl9Y1uFBTI4RIdrYY4Up/qiJ8
	LP4t0rV/tRjEFn0j+a7N7Dz8sWRjhsmuBpkLHPILd9nAnWgPDeie4krY6nCvgGVCRpNj9Hf
	qMhwmY05nepSuoZwqICmCM2Bkf21ACLAidzeqjyEVLAVka971UWLLmT3zX3HYnyTdKNbySS
	dgMh8BFKc+Bbqp/wzfFbBmDTpSk6vJ7wx3jGPYFAKKaY0iQlSPfRGyg2nm0Hrm/GDGL2KP8
	p4/bEIMOJWC/Wq8s0Djcv1mbhjFnnQXIkrUZeYwp+Pqhfopcd/9JTdmzEHUBMYmkDeajeja
	67WKc72AkhrW46evXYxdXee0KbKJIvGm/Loc=
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0

While reading `man clone.2`,
I found that the parent process doesn't unmap the stack of child
process.
Should we unmap the memory in this example?


