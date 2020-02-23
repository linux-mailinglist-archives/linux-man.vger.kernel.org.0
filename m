Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 78CBA169A41
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2020 22:27:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726534AbgBWV1H (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Feb 2020 16:27:07 -0500
Received: from mout.gmx.net ([212.227.17.20]:37063 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726302AbgBWV1G (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 23 Feb 2020 16:27:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1582493218;
        bh=tO8Y4w5vPR/tEkceOVqDPsu6o8r0DtItpA77sxas/z0=;
        h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
        b=DG7slxq6MvNybaQP8URnOXr6MYIEva+sDNHBVIgY+UlDFnEZ4A65VNXh+mXdNm0/H
         OMgAChLPjQm9jJad4UIRhEV1AxDp8E4qEO7Oq9G54A+v38Y9JHXs+PWuYSMtPYxaMr
         VhaYnjN5tUzPHRW4VfZY8OFcAjmHonq4ybyrKQPY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.20.60] ([92.116.188.128]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MEFzx-1jG7FP2gy5-00AHmB; Sun, 23
 Feb 2020 22:26:58 +0100
Subject: Re: [PATCH][RFC] clock_getres.2: Document that consecutive calls for
 CLOCK_MONOTONIC may return same values
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, John Stultz <john.stultz@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>
References: <20200220172441.GA12717@ls3530.fritz.box>
 <0837faa7-a8ec-12ff-e96d-8dfea3e60c50@gmail.com>
From:   Helge Deller <deller@gmx.de>
Autocrypt: addr=deller@gmx.de; keydata=
 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
 c2TFWAS8k6RLkk41ZUU8ENX8+qZx/Q==
Message-ID: <2c7b2576-0c5a-a40d-55c8-27cf28124767@gmx.de>
Date:   Sun, 23 Feb 2020 22:26:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <0837faa7-a8ec-12ff-e96d-8dfea3e60c50@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:EYdSRMu7rkoqBJkICqG3jMDxnAaHOCjbzFCq+5DaMyBvX8LYhum
 BaNVQCOcP4mlYRFwKxuEjG+bPT+p/uVJdr8qdZN23fgTVqTrvoq895GmnhtJewNFeGwLEpD
 0M+vqpyiEk+uANjn1mpNBOzZi/sgY12JDC2WLHCAsQqUSZANWJUtYArSnh8W/1Dv3U5tC+s
 md7DOlkTLnvYDOxkU7Xpw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zyemSD+XSFE=:m5ZyHJ6kEg8Pb4eOYBcKmW
 P73bPvbFMn2a5YBv3U4yeGmjRRNcBYu7eXDeQuDHJtOk0bYhKF+S7PGPFcQzt2RXac33PVlM2
 wvd/9IEBT7XJDvtQwMGXHF+4OfuB0K/7t79hIWMy7vT9kV+m7Y0DW3NG08bctQ1UokIadN9fh
 ErsF8zw+9snaylfFpyxtHkpmP35va3Q1PsNORU2kYPxFCFVEeygQ50uygV8d1wF1xhBgZoMEJ
 PpdxTPdEZkHxJsoGjzTp2k3LfnK1TD4ryhU4ui9t76ES42ZCvGwaaS2cnl3G+YUcf09IYvZhE
 8SFwVIYPxV86obZSUBfKVFsGm9afy8hb+BRs68IkVsd9U90ksgp7mhvqADw3a2mLbRVE9PzqL
 kaEs9HFnPI/zOaCTCqz9z1vbFTl2F/4Ce24Jjv0ENZSjylyU4mSUmQM9K3qAHk+AySIsrEGyZ
 +ww6DPUItoG2uH18hPuuNkWp6gnr1Ky3wlasYQb7clSY3Nkk9XdbXRECLRc65RnqsarcXNdU+
 QVg7SzQM6imA8wKzI1xpTA/OYyeoZm1ZQWCFD2cV4m5RWaZSZnEQiK391ajG+GT5tZl36ybjW
 XBrPAeVFyCc5edfu6hLVYkwoHSgKZOMwOZh1ssGHcoq//kNh+OHkLPgKJCUW+86Cdl56QaLo0
 inkGnfqxooHKjKqu5uti4u/QtnQis2fGvvm8rGuKh3fNT4vrZsccuPE/InnN6q109dxwZLhCH
 jX7YJ6vorC3aK8uonLu4JDl4gB+VcBLhwA2b01wqTuuWrszNPhC261Dk2ZZ9COV/Ilzy/4ICH
 akRMuycjqe1QWK0X7ea5M39/w32WWGINgt8W/GzRG7SxPhPU+PF0zDo1lSgFmF4FXQiVYGvxD
 xq+sJ6n6MOvBO99ejx7WveYVaMSHXAUsU93wGZ+j13DtSy2lK79N9JkTDyPunGtlk0+hA4MQ0
 7idNpWxe3U2kF6m5zRbRUkdhLTt0GdZUci2CnosWBfSrtVqvpAPK12Gyd0vFLxdoVfvW8L2qU
 6b2bb08RUt+tGcCWQ6rDFbPoLkpNlpHnNTMRIMNGndKHJmFnuBU5KL9WmX1D9Z7WC222URGtH
 hVmAAnkwYlb8V+Sw4EWvvvhFZHjYMYUGW3knjl/vr32iMHGH5E/fpsGz858RIuTtIubhtXhZf
 HIKs/42oK1OHNgfJGHXfZKH3Cd+NKZvJ0yj+c6cRAG8cT/4wurwq6Id7+WdxpjDKGkGGbyaYH
 JkEhq5rcDRpHAExnoEy2yfirnPsfgVgx9UWH7bnlnMpAkzYx8hyaxvfpiE6gh21oCgHCqADt2
 CQf7Wl+Db6rTdTMykUoI3jc7Y4Lz7bFMccpSGozQBcUZkQIw42DyFfgrccDe5q3DooeRVYmg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 23.02.20 22:09, Michael Kerrisk (man-pages) wrote:
> Hello Helge,
>
> On 2/20/20 6:24 PM, Helge Deller wrote:
>> Consecutive calls to clock_gettime(CLOCK_MONOTONIC) are guaranteed to
>> return MONOTONIC values, which means that they either return the *SAME*
>> time value like the last call, or a later (higher) time value.
>>
>> Due to high resolution counters like TSC on x86 most people see that th=
e
>> values returned increase, but on other less common platforms it's less
>> likely that consecutive calls return newer values, and instead users ma=
y
>> unexpectely get back the SAME time value.
>>
>> I think it makes sense to document that people should not expect to see
>> "always-growing" time values. For example in Debian I've seen in quite
>> some source packages where return values of consecutive calls are
>> compared against each other and then the package build fails if they ar=
e
>> equal (e.g.  ruby-hitimes, ...).
>>
>> The patch below is just for RFC. I'm open for any better wording!
>>
>> Signed-off-by: Helge Deller <deller@gmx.de>
>>
>> diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
>> index 646fa37c0..89e9f6a30 100644
>> --- a/man2/clock_getres.2
>> +++ b/man2/clock_getres.2
>> @@ -151,6 +151,10 @@ but is affected by the incremental adjustments per=
formed by
>>  .BR adjtime (3)
>>  and NTP.
>>  This clock does not count time that the system is suspended.
>> +All
>> +.B CLOCK_MONOTONIC
>> +variants guarantee that the time returned by consecutive calls will no=
t go
>> +backwards, but they may return the identical (not-increased) time valu=
e.
>>  .TP
>>  .BR CLOCK_MONOTONIC_COARSE " (since Linux 2.6.32; Linux-specific)"
>>  .\" Added in commit da15cfdae03351c689736f8d142618592e3cebc3
>
> Thanks. I applied your patch, and then tweaked slightly, so
> tha the change looks as below.


Looks good.
Thanks!

Helge


> Cheers,
>
> Michael
>
> diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
> index 646fa37c0..3fb0ac61c 100644
> --- a/man2/clock_getres.2
> +++ b/man2/clock_getres.2
> @@ -151,6 +151,11 @@ but is affected by the incremental adjustments perf=
ormed by
>  .BR adjtime (3)
>  and NTP.
>  This clock does not count time that the system is suspended.
> +All
> +.B CLOCK_MONOTONIC
> +variants guarantee that the time returned by consecutive calls will not=
 go
> +backwards, but successive calls may\(emdepending on the architecture\(e=
mreturn
> +identical (not-increased) time values.
>  .TP
>  .BR CLOCK_MONOTONIC_COARSE " (since Linux 2.6.32; Linux-specific)"
>  .\" Added in commit da15cfdae03351c689736f8d142618592e3cebc3
>
>
>

