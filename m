Return-Path: <linux-man+bounces-4254-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3CCC38250
	for <lists+linux-man@lfdr.de>; Wed, 05 Nov 2025 23:09:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 90EC218C75D2
	for <lists+linux-man@lfdr.de>; Wed,  5 Nov 2025 22:09:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 331DE2EE5FE;
	Wed,  5 Nov 2025 22:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=gouders.net header.i=@gouders.net header.b="WRrzXY/b"
X-Original-To: linux-man@vger.kernel.org
Received: from mx10.gouders.net (mx10.gouders.net [202.61.206.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4962C2EF65C
	for <linux-man@vger.kernel.org>; Wed,  5 Nov 2025 22:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.61.206.94
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762380523; cv=none; b=qA1TE82ULry5urPATh7Z4RMEMG9g+q9Zq+R26oVICjBFalhT2JCD/1wysaqymJmr2QR5PqQH4nCA5aHPJBfSZrFXH10mYktNMowbbdNmPP+c1HCF7I/X5hWg8UBxSTWp1T6RSW5rKTzY9wnyWEvun4F/U4i6lUMEVO3iH3GpHCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762380523; c=relaxed/simple;
	bh=H95ith4XQx7Bm10+iMpmnW8IVUj6lKD0eaz8qQPy24A=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=HfPIbggohh8BVQjExRh092iprBbKFtBnm9OA6WN8qLFB+PPUSr7DcFsC9GQhbOoSl555Bd0APoG3L8i0UHGtuVbcMjZf43ozKo5kyMLpDVg8JJnYnRA+s7t6mEtJjulQhQSPLm8Vez8iOB0Y0KyMQfdVyp/yrrwXb429zlcHXOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gouders.net; spf=pass smtp.mailfrom=gouders.net; dkim=pass (1024-bit key) header.d=gouders.net header.i=@gouders.net header.b=WRrzXY/b; arc=none smtp.client-ip=202.61.206.94
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gouders.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gouders.net
Received: from localhost ([47.65.179.194])
	(authenticated bits=0)
	by mx10.gouders.net (8.18.1/8.17.1.9) with ESMTPSA id 5A5M8Wga003195
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Wed, 5 Nov 2025 23:08:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gouders.net; s=gnet;
	t=1762380513; bh=H95ith4XQx7Bm10+iMpmnW8IVUj6lKD0eaz8qQPy24A=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=WRrzXY/bQzHmq1YS6rpl8R/azAd8Ln8O72yJyLo+wBJKhOeSzCmY1z5vs4GcuV9ZD
	 Si8WpczWxQttUznIs/PxICign5TQejcpnrNDh6nFneltKqSU8fvwB4d4o/WpAhSmxg
	 632at2g8OBc7W+ldpXeyY7K27FbxNMid0rcx7JXk=
From: Dirk Gouders <dirk@gouders.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: wcwidth(3): wrong #define?
In-Reply-To: <km4jixjgoknyrfty7fdxxt72uyd76ilib62r7oqtjixmfvwucv@ca7rbihkf5ny>
	(Alejandro Colomar's message of "Wed, 5 Nov 2025 22:12:48 +0100")
References: <ghms50i7u0.fsf@gouders.net>
	<km4jixjgoknyrfty7fdxxt72uyd76ilib62r7oqtjixmfvwucv@ca7rbihkf5ny>
User-Agent: Gnus/5.13 (Gnus v5.13)
Date: Wed, 05 Nov 2025 23:08:32 +0100
Message-ID: <ghecqci13z.fsf@gouders.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Alex,

> On Wed, Nov 05, 2025 at 08:43:19PM +0100, Dirk Gouders wrote:
>> Hi Alex,
>>=20
>> I'm playing with a program to calculate wide character widths and
>> gcc complains when I use wcwidth(3) according to the manpage:
>
> What's the exact diagnostic you're seeing?  I'm not seeing any issues:

here's my program (meanwhile, I read that _XOPEN_SOURCE should appear
before _any_ header and that indeed would help):

---------------------------------------------------------------------------=
-----
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#define _XOPEN_SOURCE
#include <wchar.h>
#include <locale.h>

int main(int argc, char *argv[])
{
	size_t i =3D 0;

	char buffer[1024 * 1024];

	setlocale(LC_ALL, "");

	ssize_t ret =3D read(STDIN_FILENO, buffer, 1024 * 1024);

	if (ret < 0) {
		perror("read(2): ");
		exit(1);
	}

	printf("Read %ld bytes.\n", ret);

	while (i < ret) {
		wchar_t pwc[64];
		size_t len =3D mbrtowc(pwc, buffer + i, ret - i, NULL);

		printf("len =3D %ld\n", len);

		if (buffer[i] =3D=3D '\0')
			break;

		if (len =3D=3D 0)
			break;

		if (len < 0) {
			fprintf(stderr, "mbrtowc failure: %ld\n", len);
			exit(1);
		}

		printf("Character %lc starting at %ld needs %d cols.\n",
		       pwc[0], i, wcwidth(pwc[0]));

		i +=3D len;
	}

	exit(0);
}
---------------------------------------------------------------------------=
-----

And compiling it gives:

---------------------------------------------------------------------------=
-----
$ make
gcc -o wchar-cols wchar-cols.c
wchar-cols.c: In function =E2=80=98main=E2=80=99:
wchar-cols.c:43:35: error: implicit declaration of function =E2=80=98wcwidt=
h=E2=80=99 [-Wimplicit-function-declaration]
   43 |                        pwc[0], i, wcwidth(pwc[0]));
      |                                   ^~~~~~~
make: *** [Makefile:2: wchar-cols] Error 1
---------------------------------------------------------------------------=
-----

Regards,

Dirk


> 	alx@devuan:~/tmp$ cat foo.c=20
> 	#define _XOPEN_SOURCE
> 	#include <wchar.h>
>
> 	int
> 	main(void)
> 	{
> 		wcwidth(0);
> 		return 0;
> 	}
> 	alx@devuan:~/tmp$ gcc -Wall -Wextra -std=3Dc89 foo.c=20
> 	alx@devuan:~/tmp$ gcc -Wall -Wextra foo.c=20
> 	alx@devuan:~/tmp$=20
>
>> ------------------------------------------------------------------------
>> wcwidth(3)                  Library Functions Manual                 wcw=
idth(3)
>>=20
>> NAME
>>        wcwidth - determine columns needed for a wide character
>>=20
>> LIBRARY
>>        Standard C library (libc, -lc)
>>=20
>> SYNOPSIS
>>        #define _XOPEN_SOURCE       /* See feature_test_macros(7) */
>>        #include <wchar.h>
>> ------------------------------------------------------------------------
>>=20
>> Looking at wchar.h explains the problem:
>>=20
>> ------------------------------------------------------------------------
>> /* The following functions are extensions found in X/Open CAE.  */
>> #ifdef __USE_XOPEN
>> /* Determine number of column positions required for C.  */
>> extern int wcwidth (wchar_t __c) __THROW;
>> ------------------------------------------------------------------------
>>=20
>> So, if I replace "#define _XOPEN_SOURE" with "#define _USE_XOPEN",
>> gcc stops complaining.
>
> _USE_XOPEN is a glibc internal that users shouldn't set.
>
>>=20
>> I would have prepared a patch but somehow expect that there are
>> situations when "#include _XOPEN_SOURCE" might be correct...
>>=20
>> Regards,
>>=20
>> Dirk
>
> Have a lovely night!
> Alex

