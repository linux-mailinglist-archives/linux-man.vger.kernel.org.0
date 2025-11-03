Return-Path: <linux-man+bounces-4247-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F186CC2BD4E
	for <lists+linux-man@lfdr.de>; Mon, 03 Nov 2025 13:51:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D4453BF0AF
	for <lists+linux-man@lfdr.de>; Mon,  3 Nov 2025 12:46:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D5162DAFB8;
	Mon,  3 Nov 2025 12:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=aegee.org header.i=dkim+MSA-tls@aegee.org header.b="n3Dz6y1s"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.aegee.org (mail.aegee.org [144.76.142.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6E62DA756
	for <linux-man@vger.kernel.org>; Mon,  3 Nov 2025 12:46:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=144.76.142.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762174008; cv=none; b=aaXIeTnUn+jjb01LfIfwRyTf3teKbo7q/dcq6W96e5TwnWo8u/B92ZCFxxDLbnv74w1/BlKm1NBBKAcikcer+GthqM2lvO86uzi6k4UGK9aUVxTQvahN6ww/TwQW/fXHFuZwm2SM05mNs+yPiqXjO2+EQfJ6exOtzKJo0IoUFt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762174008; c=relaxed/simple;
	bh=8LlY8MUol/gzW9v7jTfR24+wafVWS5BMh2kKz08K2ec=;
	h=Message-ID:Subject:From:To:Cc:Date:Content-Type:MIME-Version; b=uob8UhonM7y8N3iFvBuEBO/lBbBJXLbQWS4fZUTP0UhVwcVO6Ua7MfJWubpAXsHqAjA0CJ/MS2SYQsWColBS+nN6vUco/64YnvpJ6WBJc4B9oo4tEcu1tfIMMydWV0GPHk4XB0P1dvxvYF8BsdFEftq9KT2bN4W+4rtsrBRiGY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aegee.org; spf=pass smtp.mailfrom=aegee.org; dkim=pass (4096-bit key) header.d=aegee.org header.i=dkim+MSA-tls@aegee.org header.b=n3Dz6y1s; arc=none smtp.client-ip=144.76.142.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aegee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aegee.org
Authentication-Results: mail.aegee.org/5A3Cj7Pi997005; auth=pass (PLAIN) smtp.auth=didopalauzov@aegee.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aegee.org; s=k4096;
	t=1762173907; i=dkim+MSA-tls@aegee.org;
	bh=8LlY8MUol/gzW9v7jTfR24+wafVWS5BMh2kKz08K2ec=;
	h=Subject:From:To:Cc:Date;
	b=n3Dz6y1sxtC0aUj5CMLohYML8IBhmA0ivXM/aeXiV0witzW/gIAEFnImq9X5F/lLU
	 /NQ/o8YSyt8wlWn5peoD78ShBj//m4gxGOEC2aTby6m+Jv4kN0XJbKisXVi9RCkRUW
	 RMpDMHrYC9Fk7Fck5+1S1TvF4O4hFJA3Ra3xBM7BllDudYhphRQ5M3xsemyZHfN6Rt
	 6mqfS5XWK7VBKnS+r53hFBM9RHoAI20jct2KeMRuViq+LlE6wjRQteZjW4aeqe5B2I
	 xNq2JkpIq9d0i+90CeBortUT3+K4W2UftTdIWn7y0ManP2doNZCzLpddg8Fd47+iFu
	 DkjiCkDxvOx4fLhelJZOd8wRH8NlKGobsp2SGj6btd8xQaa+8g1jAIzJ7gOuRBixem
	 nesN0Ltfe3PkJe+FNzqPHtUkFRvUi8pOSE4QBVC3bZd+u5vWaajtQax6N51AIEnr6e
	 /+Zrs51LHQLZ+wpNP/AFo4GtIuOeYwuJ5vglEhcYkW3tECDaDprCRP6Xjx8C4v1B0c
	 6fEq6CBmkdE23bIdJAdELHqzOa4HBtkisRAbV3r2edve7xo+Pode2fxvunC6j3GlZr
	 AOXLluSX8Lzn13anju+mpx0ky6eXwDX4+fkn6hTmRabksYjdrLvjz0zXt9hBUoFtkb
	 CGZl2gqCCtkb1/SjRcLJSioQ=
Authentication-Results: mail.aegee.org/5A3Cj7Pi997005; dkim=none
Received: from [192.168.0.242] (95-43-114-153.ip.btc-net.bg [95.43.114.153])
	(authenticated bits=0)
	by mail.aegee.org (8.18.1/8.18.1) with ESMTPSA id 5A3Cj7Pi997005
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 3 Nov 2025 12:45:07 GMT
Message-ID: <ebb992217f4a2ceca9a6d9868f50da73c68e8cdb.camel@aegee.org>
Subject: tcgetattr() can set errno to 22 / EINVAL
From: =?UTF-8?Q?=D0=94=D0=B8=D0=BB=D1=8F=D0=BD_?=
 =?UTF-8?Q?=D0=9F=D0=B0=D0=BB=D0=B0=D1=83=D0=B7=D0=BE=D0=B2?=
	 <dilyan.palauzov@aegee.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Date: Mon, 03 Nov 2025 14:45:06 +0200
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.59.1 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hello,

please amend the errors at https://man7.org/linux/man-pages/man3/tcgetattr.=
3p.html that the function tcgetattr() can set errno to EINVAL 22 Invalid ar=
gument for /dev/hidraw files.

Using kernel 6.6.60 on armv7l and libc 2.36 (where tcgetattr is implemented=
 in termios/tcgetattr.c as ioctl(fd, TCGETS, =E2=80=A6)), this program


#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <termios.h>

void main() {
  int fd =3D open("/dev/hidraw0", O_RDWR | O_NONBLOCK |O_NOCTTY);
  struct termios s;
  errno =3D 0;
  int ret =3D tcgetattr(fd, &s);
  printf("Returned fd is %i ret is %i errno is %i %m\n", fd, ret, errno);
}


puts:

Returned fd is 3 ret is -1 errno is 22 Invalid argument

Well at https://pubs.opengroup.org/onlinepubs/9799919799/functions/tcgetatt=
r.html  Open Group Base Specifications Issue 8/year 2024 also says only EBA=
DF and ENOTTY.


Kind regards
  =D0=94=D0=B8=D0=BB=D1=8F=D0=BD

