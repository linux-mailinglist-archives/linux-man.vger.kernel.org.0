Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 009CC29EA23
	for <lists+linux-man@lfdr.de>; Thu, 29 Oct 2020 12:10:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727215AbgJ2LJs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Oct 2020 07:09:48 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:24522 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727653AbgJ2LJp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Oct 2020 07:09:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1603969784;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=aqvn+Wuq7DAtJoPn4mKsiaT5Chc8jfwDj7vkOMTXOn4=;
        b=UMJ3EHAqgbz2WFSmSaHrCJ24wERSLCIq2uIoRGQV2NeyExP2SpD8/B7a43nIUiUXtDOMHo
        2IhWCaqtinVpPn2+yiuxb8jJv5l89zFEL0sWd+c1zE2zXMZCdzh/7tQCbe70XWkS3HjDDe
        hSRL9CA8Q3mTakGNDuZe7bfSDeNcjVo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-70-tjK1E6hEPG24CUiMtdYPcw-1; Thu, 29 Oct 2020 07:09:40 -0400
X-MC-Unique: tjK1E6hEPG24CUiMtdYPcw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 40EF710E2186;
        Thu, 29 Oct 2020 11:09:39 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-113-60.ams2.redhat.com [10.36.113.60])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id D3EC8196F3;
        Thu, 29 Oct 2020 11:09:37 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org>
Cc:     libc-help@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: Possible bug in getdents64()?
References: <829387c9-50d7-3d29-83bf-c4fec17cf9dd@gmail.com>
        <01065580-8602-52e6-0cca-22d1aa20a540@gmail.com>
Date:   Thu, 29 Oct 2020 12:09:36 +0100
In-Reply-To: <01065580-8602-52e6-0cca-22d1aa20a540@gmail.com> (Alejandro
        Colomar via Libc-alpha's message of "Thu, 29 Oct 2020 12:04:13 +0100")
Message-ID: <87eelhthjj.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar via Libc-alpha:

> [[ CC +=3D linux-man, linux-kernel, libc-alpha, mtk ]]
>
> On 2020-10-28 20:26, Alejandro Colomar wrote:
>> The manual page for getdents64() says the prototype should be the
>> following:
>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int getdents64(unsigned int fd, st=
ruct linux_dirent64 *dirp,
>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsigned int count);
>>=20
>> Note the type of 'count': 'unsigned int'
>> (usually a 32-bit unsigned integer).
>> And the Linux kernel seems to use those types (fs/readdir.c:351):
>> SYSCALL_DEFINE3(getdents64, unsigned int, fd,
>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct linux_dirent64 __user=
 *, dirent,
>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsigned int, count)
>> {
>> ...
>> }
>> But glibc uses 'size_t' (usually a 64-bit unsigned integer)
>> for the parameter 'count' (sysdeps/unix/linux/getdents64.c:25):
>>=20
>> /* The kernel struct linux_dirent64 matches the 'struct dirent64' type.=
=C2=A0 */
>> ssize_t
>> __getdents64 (int fd, void *buf, size_t nbytes)
>> {
>>  =C2=A0 /* The system call takes an unsigned int argument, and some leng=
th
>>  =C2=A0=C2=A0=C2=A0=C2=A0 checks in the kernel use an int type.=C2=A0 */
>>  =C2=A0 if (nbytes > INT_MAX)
>>  =C2=A0=C2=A0=C2=A0 nbytes =3D INT_MAX;
>>  =C2=A0 return INLINE_SYSCALL_CALL (getdents64, fd, buf, nbytes);
>> }
>> libc_hidden_def (__getdents64)
>> weak_alias (__getdents64, getdents64)
>>=20
>> Isn't it undefined behavior to pass a variable of a different
>> (larger) type to a variadic function than what it expects?
>> Is that behavior defined in this implementation?
>> Wouldn't a cast to 'unsigned int' be needed?

There is no variadic function involved here.  INLINE_SYSCALL_CALL takes
care of the zero extension to the register internally, irrespective of
the argument type.  (The register is of type long int or long long int,
depending on the architecture.)

Thanks,
Florian
--=20
Red Hat GmbH, https://de.redhat.com/ , Registered seat: Grasbrunn,
Commercial register: Amtsgericht Muenchen, HRB 153243,
Managing Directors: Charles Cachera, Brian Klemm, Laurie Krebs, Michael O'N=
eill

