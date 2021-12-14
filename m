Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F3CA4740EE
	for <lists+linux-man@lfdr.de>; Tue, 14 Dec 2021 11:55:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229883AbhLNKzz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 Dec 2021 05:55:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229513AbhLNKzz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 14 Dec 2021 05:55:55 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06F53C061574
        for <linux-man@vger.kernel.org>; Tue, 14 Dec 2021 02:55:55 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id o13so31616866wrs.12
        for <linux-man@vger.kernel.org>; Tue, 14 Dec 2021 02:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=WpV1iTHugLBDDVIUnYg+lMn8F6/DaK92IcfjFXl4kIY=;
        b=fHyw2/zb1k1UvPC47PfKcBafkGQwwLNuCM7rpCJS23zbxHFWaPYLLbOAx+r9E2fJ9m
         5PbtjWs00qy6T/zRZRKJ+liX212wFmsIuv1TsVsnourVMNAM3Xtn0e3rTvgYZUvJTGJh
         S5DHjzc8+6eKvrnmY7gOZPHGxKVxgpUz//FphU1zlWmd+YFcjPpc8iopFgfxgyuSuYaH
         8WLwX2L2Tvnwdtc8YrEOn7AojqJVEmkKhYTw0tVrUEZnfX7ZEqyNoetR4DTlD9Yt9sVW
         +lK1tTt/3ZvIzsMv+KFUFhI2mOLnOerRkJIWY+i/BENifRvQ/bj6ShkD/Lymi/e9KQiJ
         3CKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=WpV1iTHugLBDDVIUnYg+lMn8F6/DaK92IcfjFXl4kIY=;
        b=cj0Hg/C8fGaxRfanumemx8bE7e7Q2M2plewIbTd/Sokm2lX66YmSzfoffzq7eBPoDu
         SaOBss3rkfRxSE/MmXD4MedT+sdJHI7k+N6TaQqIwT6p0n21JJAynpHIH0AC93SaxwD3
         jijxc9n3uVjrf0ULhNDF8vuFJaKwOnp3Ls4u2q7vqRlDMs+IkoqYo8k/0TFGI1kgnby4
         MqJc1K1YDxVJfJ+adWJ2MX4SN/Zx5xvfbQjIHmIsVPfa58FuVJRBsMWmBSeiAKC/BMeh
         1egoMxeeBcqW8TDAIoBSHV63wtnr/MYEpzHYxY1Ka1zCgPA9ZQ98zncNbFLABM3L2DBY
         p5cw==
X-Gm-Message-State: AOAM531IMfXD79ngjzAwKqJKyKaA5nUayr3wKvKYHqViJHkxv3CSy8ks
        zw7PqX2k5LBn6+7gR+xcPE4=
X-Google-Smtp-Source: ABdhPJwDZIUHL7x4EZczcXIY90PKi3Fh8UI/tHSySAjcUHQyH1KBd/TEdylNxuTu+XPX1h1K5c9JnQ==
X-Received: by 2002:adf:ecca:: with SMTP id s10mr4709808wro.405.1639479353468;
        Tue, 14 Dec 2021 02:55:53 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id s207sm239682wme.2.2021.12.14.02.55.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Dec 2021 02:55:52 -0800 (PST)
Message-ID: <ec801962-d450-cdd9-63f9-93116c18ec7f@gmail.com>
Date:   Tue, 14 Dec 2021 11:55:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: man 8 usermod -e, --expiredate EXPIRE_DATE information incorrect
 (can't be blank, must be -1 to clear)
Content-Language: en-US
To:     "David C. Rankin" <drankinatty@gmail.com>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
References: <57850ad8-4ef5-af6c-fb64-f7c640c3b40d@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <57850ad8-4ef5-af6c-fb64-f7c640c3b40d@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello David,

On 12/10/21 23:54, David C. Rankin wrote:
> Dear usermod man page maintainers,
> 
>    There is an error in the description of the option for:
> 
> -e, --expiredate EXPIRE_DATE
> 
>    The man page states:
> 
> An empty EXPIRE_DATE argument will disable the expiration of the account.
> 
>    This is incorrect. The EXPIRE_DATE argument CANNOT be empty or it will take
> the LOGIN as the value for the EXPIRE_DATE.
> 
>    Instead, the correct use is "-e -1" or "--expiredate -1" where "-1" (-one)
> is provided as the EXPIRE_DATE value.
> 
> See, e.g.: https://stackoverflow.com/a/30769911/3422102

Thanks for the report.

I tried a few combinations that allow to pass an empty argument to the 
expiredate option.

 From a terminal, I expire the password (and check it) with:

$ sudo usermod -e 1 alx
$ su alx
Password:
Your account has expired; please contact your system administrator.
su: Authentication failure
$


Then from another terminal (logged in as root), I re-enable it, with 
either of the following:

# usermod -e '' alx
# usermod --expiredate= alx

And then I can log in correctly:

$ su alx
Password:
$


I commented on the stackoverflow post with this info.


Cheers,
Alex


See some more details below:

===========
https://github.com/shadow-maint/shadow/tree/master
is the source code for the passwd package available in Debian.


Parsing the options and arguments in <src/usermod.c>:

			case 'e':
				if ('\0' != *optarg) {
					user_newexpire = strtoday (optarg);
					if (user_newexpire < -1) {
						fprintf (stderr,
						         _("%s: invalid date '%s'\n"),
						         Prog, optarg);
						exit (E_BAD_ARG);
					}
					user_newexpire *= DAY / SCALE;
				} else {
					user_newexpire = -1;
				}
				eflg = true;
				break;


So both '' and '-1' are treated in the same way,
but '-1' is undocumented.
I'm wondering what other undocumented formats are accepted,
since I succeeded with a positive number,
which is also undocumented,
so let's see strtoday():


/*
  * strtoday() now uses get_date() (borrowed from GNU shellutils)
  * which can handle many date formats, for example:
  *	1970-09-17	# ISO 8601.
  *	70-9-17		# This century assumed by default.
  *	70-09-17	# Leading zeros are ignored.
  *	9/17/72		# Common U.S. writing.
  *	24 September 1972
  *	24 Sept 72	# September has a special abbreviation.
  *	24 Sep 72	# Three-letter abbreviations always allowed.
  *	Sep 24, 1972
  *	24-sep-72
  *	24sep72
  */
long strtoday (const char *str)
{
	time_t t;
	bool isnum = true;
	const char *s = str;

	/*
	 * get_date() interprets an empty string as the current date,
	 * which is not what we expect, unless you're a BOFH :-).
	 * (useradd sets sp_expire = current date for new lusers)
	 */
	if ((NULL == str) || ('\0' == *str)) {
		return -1;
	}

	/* If a numerical value is provided, this is already a number of
	 * days since EPOCH.
	 */
	if ('-' == *s) {
		s++;
	}
	while (' ' == *s) {
		s++;
	}
	while (isnum && ('\0' != *s)) {
		if (!isdigit (*s)) {
			isnum = false;
		}
		s++;
	}
	if (isnum) {
		long retdate;
		if (getlong (str, &retdate) == 0) {
			return -2;
		}
		return retdate;
	}

	t = get_date (str, NULL);
	if ((time_t) - 1 == t) {
		return -2;
	}
	/* convert seconds to days since 1970-01-01 */
	return (long) (t + DAY / 2) / DAY;
}


So a simple number is "day since the Epoch".
Other accepted formats are in the comment above the function.
BTW, since this function understands "" as -1,
the parsing in <src/usermod.c> could be simplified
(remove the special case for ""),
so I'll send a patch for that.


static void date_to_str (/*@unique@*//*@out@*/char *buf, size_t maxsize,
                          long int date)
{
	struct tm *tp;

	if (date < 0) {
		strncpy (buf, "never", maxsize);
	} else {
		time_t t = (time_t) date;
		tp = gmtime (&t);
#ifdef HAVE_STRFTIME
		strftime (buf, maxsize, "%Y-%m-%d", tp);
#else
		(void) snprintf (buf, maxsize, "%04d-%02d-%02d",
		                 tp->tm_year + 1900,
		                 tp->tm_mon + 1,
		                 tp->tm_mday);
#endif				/* HAVE_STRFTIME */
	}
	buf[maxsize - 1] = '\0';
}


Then, the number is converted back to string,
and '-1' means 'never', as you said.


-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
