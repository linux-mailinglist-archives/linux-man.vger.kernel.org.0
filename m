Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69BCF75B009
	for <lists+linux-man@lfdr.de>; Thu, 20 Jul 2023 15:32:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230018AbjGTNc3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Jul 2023 09:32:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231965AbjGTNcG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Jul 2023 09:32:06 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E79A35A0
        for <linux-man@vger.kernel.org>; Thu, 20 Jul 2023 06:31:37 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3fbd33a57b6so6920075e9.2
        for <linux-man@vger.kernel.org>; Thu, 20 Jul 2023 06:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689859885; x=1690464685;
        h=in-reply-to:references:to:content-language:subject:reply-to
         :user-agent:mime-version:date:message-id:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0uPfHsuuICM/54kP5yhae0KIt2U+MGFrxYL/LRIVOQs=;
        b=esFHZkdZ3I0qDnav8iz/5sOwvv0s5qJ1FWyculi5dCXIVRU40b42OS4RScN9m/A9V2
         yblTd5li742DcsCL0TKiqkgJM6YI/hrtOp/d6tNrMNIxBh+q2lafQSLpYIWzTTg2WiMv
         LiOF9XSqzw4Kwe6Lw5QZOJqJ4H6jQe4d04iJnTmgUhnOMrjreazDhG8ohwMdX9wxRsi9
         DPVu7B6T5nsmTKcZO58J6Mb9Ifc4eVl7dVAK3+AgzGrM5FuM8cYWJLLcJLslQpJZ0+oh
         DOLKvPzH0wUm0vmYxWKQXUeLMUNOZTjSkkxFWJuUsCuDcWkms4pSKly15WYQt0MlvdRS
         oliQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689859885; x=1690464685;
        h=in-reply-to:references:to:content-language:subject:reply-to
         :user-agent:mime-version:date:message-id:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0uPfHsuuICM/54kP5yhae0KIt2U+MGFrxYL/LRIVOQs=;
        b=ALssoxQbuzMELRgzmzxmX7SmSnmNMo1i6ritBiuOTJMIgzmAYT1UUpAoblf5NGgG/p
         PbwOQJmLWt/FBS6ajGo5z9j2K3XSmFkAgVIxpvEAkixAjtrO8Qqf/shCFnDN9scc93Dp
         i23QOcp/w2Ov7IyaUIIOGnRK/El5iM9VDlBXWd20I0HgpKQvSRYycq+dxmOJBa7Qyc80
         EFmVMwD4SwDCeoJyTIm2lN5EXIstFW6v4w2R54TmfknBXOaziVmOdwKSs1r1Wgk/K9wn
         xLkwgPq00DAJvT/dq+tbkOzS8986nYvZpuA4MBqpUpEvDIn9SYAH5C0zk4/x2QHMK+E5
         eQFA==
X-Gm-Message-State: ABy/qLbyvj/r8Ub1L1aP/Eo1K0N9ijIB4WlnfL7uMKPnMpz9Qli9eH3v
        MyxUpnwVXZ+pXgYCV6jb4R0=
X-Google-Smtp-Source: APBJJlGgJZAwqllfCxQcqmlmXrrmbijq95MYu8m3olEKvFSIP4n0GtaQvtoH7CQSVtat3Ga0kJ9gGQ==
X-Received: by 2002:a05:600c:364d:b0:3fc:3e1:7105 with SMTP id y13-20020a05600c364d00b003fc03e17105mr7114065wmq.24.1689859884561;
        Thu, 20 Jul 2023 06:31:24 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.40.43])
        by smtp.gmail.com with ESMTPSA id a12-20020a5d53cc000000b00313f9a0c521sm1348581wrw.107.2023.07.20.06.31.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jul 2023 06:31:23 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx.manpages@gmail.com>
Message-ID: <5da7de11-e4f7-1941-a265-5611341099f6@gmail.com>
Date:   Thu, 20 Jul 2023 15:31:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Reply-To: alx@kernel.org
Subject: Re: [PATCH 2/2] man*/: ffix (un-bracket tables)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <20230720020612.yg4dfhxummbc5blv@illithid>
 <20230720030503.2vyjv2kksisetwui@illithid>
In-Reply-To: <20230720030503.2vyjv2kksisetwui@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------QvJFlLWcLDIhAKLf5rnfbe06"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------QvJFlLWcLDIhAKLf5rnfbe06
Content-Type: multipart/mixed; boundary="------------Fi8XLqCck0FKEdWPCIfSgGVM";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
Reply-To: alx@kernel.org
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <5da7de11-e4f7-1941-a265-5611341099f6@gmail.com>
Subject: Re: [PATCH 2/2] man*/: ffix (un-bracket tables)
References: <20230720020612.yg4dfhxummbc5blv@illithid>
 <20230720030503.2vyjv2kksisetwui@illithid>
In-Reply-To: <20230720030503.2vyjv2kksisetwui@illithid>

--------------Fi8XLqCck0FKEdWPCIfSgGVM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-07-20 05:05, G. Branden Robinson wrote:
> Second try.  Sending the diff as a compressed attachment because it was=

> rejected by vger as inline text.
>=20
> From 4116bdd0d95190f008cb40285afe6ebaa4ad9397 Mon Sep 17 00:00:00 2001
> From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> Date: Wed, 19 Jul 2023 20:37:55 -0500
> Subject: [PATCH 2/2] man*/: ffix (un-bracket tables)
>=20
> * Stop disabling adjustment and automatic hyphenation before tables, an=
d
>   incorrectly "restoring" it afterward.  In addition to repetitious
>   boilerplate around tables, the `ad` and `hy` requests, when not given=

>   arguments, do not behave as many man page authors expect.  If
>   adjustment was initially disabled when rendering the page, it was
>   being activated after `TE` calls, frustrating the desire of the
>   reader.  Furthermore, `hy` when given no argument enables automatic
>   hyphenation in mode "1", which is not an appropriate value for the
>   TeX-based hyphenation patterns for English that groff has used for
>   over 30 years.  And analogously to `ad`, a simple `hy` request would
>   reactivate automatic hyphenation even if the reader had disabled it.
>=20
>   Moreover, such fiddling is often unnecessary.  tbl(1) from groff
>   1.23.0 describes how tbl(1) has always worked, dating back to Michael=

>   Lesk's original implementation at Bell Labs in the 1970s.
>=20
>   "Ordinarily, a table entry is typeset rigidly.  It is not filled,
>   broken, hyphenated, adjusted, or populated with additional inter-
>   sentence space.  ...  Text blocks are formatted as was the text prior=

>   to the table, modified by applicable column descriptors.  ...  Add na=

>   or ad requests to the beginning of a text block to alter its
>   adjustment distinctly from other text in the document.  As with other=

>   table entries, when a text block ends, any alterations to formatting
>   parameters are discarded.  They do not affect subsequent table
>   entries, not even other text blocks."
>=20
> * Apropos of the foregoing, add `na` and `nh` requests to the
>   "Interface" columns of MT-safety tables in pages' "ATTRIBUTES"
>   sections, so that C function names are not inappropriately hyphenated=
=2E
>=20
> I produced this change with the following GNU sed script.
>=20
> :start
> /^\.ad l/{N;/\n\.nh/{N;/\n\.TS/s/.*/.TS/}}
> /^\.TE/{N;/\n\.hy/{N;/\n\.ad/s/.*/.TE/}}
> /^Interface.*Attribute.*Value/{N;/\nT{/s/.*/&\n.na\n.nh/
> :loop
> n
> /T{/s/.*/&\n.na\n.nh/
> /^\.TE/b start;
> b loop
> }

Patch applied (actually, I applied it from v1, and compared it to the
script).  With this, the entire set is applied.

Cheers,
Alex

> ---
>  man2/adjtimex.2                      |  2 ++
>  man2/clock_getres.2                  |  6 ++----
>  man2/eventfd.2                       |  6 ++----
>  man2/getrlimit.2                     |  6 ++----
>  man2/getrusage.2                     |  6 ++----
>  man2/mmap.2                          |  6 ++----
>  man2/sigaltstack.2                   |  6 ++----
>  man2/utimensat.2                     |  6 ++----
>  man3/__ppc_set_ppr_med.3             |  6 ++----
>  man3/__ppc_yield.3                   |  6 ++----
>  man3/a64l.3                          |  8 +++----
>  man3/abort.3                         |  6 ++----
>  man3/abs.3                           |  6 ++----
>  man3/acos.3                          |  6 ++----
>  man3/acosh.3                         |  6 ++----
>  man3/addseverity.3                   |  6 ++----
>  man3/adjtime.3                       |  6 ++----
>  man3/aio_cancel.3                    |  6 ++----
>  man3/aio_error.3                     |  6 ++----
>  man3/aio_fsync.3                     |  6 ++----
>  man3/aio_read.3                      |  6 ++----
>  man3/aio_return.3                    |  6 ++----
>  man3/aio_suspend.3                   |  6 ++----
>  man3/aio_write.3                     |  6 ++----
>  man3/alloca.3                        |  6 ++----
>  man3/arc4random.3                    |  6 ++----
>  man3/argz_add.3                      |  6 ++----
>  man3/asin.3                          |  6 ++----
>  man3/asinh.3                         |  6 ++----
>  man3/asprintf.3                      |  6 ++----
>  man3/assert.3                        |  6 ++----
>  man3/assert_perror.3                 |  6 ++----
>  man3/atan.3                          |  6 ++----
>  man3/atan2.3                         |  6 ++----
>  man3/atanh.3                         |  6 ++----
>  man3/atexit.3                        |  6 ++----
>  man3/atof.3                          |  6 ++----
>  man3/atoi.3                          |  6 ++----
>  man3/backtrace.3                     |  6 ++----
>  man3/basename.3                      |  6 ++----
>  man3/bcopy.3                         |  6 ++----
>  man3/bindresvport.3                  |  8 +++----
>  man3/bsd_signal.3                    |  6 ++----
>  man3/bsearch.3                       |  6 ++----
>  man3/btowc.3                         |  6 ++----
>  man3/byteorder.3                     |  6 ++----
>  man3/bzero.3                         |  6 ++----
>  man3/cabs.3                          |  6 ++----
>  man3/cacos.3                         |  6 ++----
>  man3/cacosh.3                        |  6 ++----
>  man3/canonicalize_file_name.3        |  6 ++----
>  man3/carg.3                          |  6 ++----
>  man3/casin.3                         |  6 ++----
>  man3/casinh.3                        |  6 ++----
>  man3/catan.3                         |  6 ++----
>  man3/catanh.3                        |  6 ++----
>  man3/catgets.3                       |  6 ++----
>  man3/catopen.3                       |  8 +++----
>  man3/cbrt.3                          |  6 ++----
>  man3/ccos.3                          |  6 ++----
>  man3/ceil.3                          |  6 ++----
>  man3/cexp.3                          |  6 ++----
>  man3/cfree.3                         |  6 ++----
>  man3/cimag.3                         |  6 ++----
>  man3/clearenv.3                      |  6 ++----
>  man3/clock.3                         |  6 ++----
>  man3/clock_getcpuclockid.3           |  6 ++----
>  man3/clog.3                          |  6 ++----
>  man3/clog10.3                        |  6 ++----
>  man3/closedir.3                      |  6 ++----
>  man3/confstr.3                       |  6 ++----
>  man3/conj.3                          |  6 ++----
>  man3/copysign.3                      |  6 ++----
>  man3/cos.3                           |  6 ++----
>  man3/cosh.3                          |  6 ++----
>  man3/cpow.3                          |  6 ++----
>  man3/cproj.3                         |  6 ++----
>  man3/creal.3                         |  6 ++----
>  man3/crypt.3                         |  8 +++----
>  man3/csin.3                          |  6 ++----
>  man3/csinh.3                         |  6 ++----
>  man3/csqrt.3                         |  6 ++----
>  man3/ctan.3                          |  6 ++----
>  man3/ctanh.3                         |  6 ++----
>  man3/ctermid.3                       |  6 ++----
>  man3/ctime.3                         | 24 +++++++++++++++++----
>  man3/daemon.3                        |  6 ++----
>  man3/des_crypt.3                     |  6 ++----
>  man3/difftime.3                      |  6 ++----
>  man3/dirfd.3                         |  6 ++----
>  man3/div.3                           |  6 ++----
>  man3/dl_iterate_phdr.3               |  6 ++----
>  man3/dladdr.3                        |  6 ++----
>  man3/dlerror.3                       |  6 ++----
>  man3/dlinfo.3                        |  6 ++----
>  man3/dlopen.3                        |  6 ++----
>  man3/dlsym.3                         |  6 ++----
>  man3/drand48.3                       |  8 +++----
>  man3/drand48_r.3                     |  6 ++----
>  man3/dysize.3                        |  6 ++----
>  man3/ecvt.3                          |  8 +++----
>  man3/ecvt_r.3                        |  6 ++----
>  man3/encrypt.3                       |  8 +++----
>  man3/envz_add.3                      |  6 ++----
>  man3/erf.3                           |  6 ++----
>  man3/erfc.3                          |  6 ++----
>  man3/err.3                           |  6 ++----
>  man3/error.3                         | 10 +++++----
>  man3/ether_aton.3                    |  8 +++----
>  man3/euidaccess.3                    |  6 ++----
>  man3/exec.3                          |  8 +++----
>  man3/exit.3                          |  6 ++----
>  man3/exp.3                           |  6 ++----
>  man3/exp10.3                         |  6 ++----
>  man3/exp2.3                          |  6 ++----
>  man3/expm1.3                         |  6 ++----
>  man3/fabs.3                          |  6 ++----
>  man3/fclose.3                        |  6 ++----
>  man3/fcloseall.3                     |  6 ++----
>  man3/fdim.3                          |  6 ++----
>  man3/fenv.3                          |  8 +++----
>  man3/ferror.3                        |  6 ++----
>  man3/fexecve.3                       |  6 ++----
>  man3/fflush.3                        |  6 ++----
>  man3/ffs.3                           |  6 ++----
>  man3/fgetc.3                         |  6 ++----
>  man3/fgetgrent.3                     |  6 ++----
>  man3/fgetpwent.3                     |  6 ++----
>  man3/fgetwc.3                        |  6 ++----
>  man3/fgetws.3                        |  6 ++----
>  man3/fileno.3                        |  6 ++----
>  man3/finite.3                        |  6 ++----
>  man3/flockfile.3                     |  6 ++----
>  man3/floor.3                         |  6 ++----
>  man3/fma.3                           |  6 ++----
>  man3/fmax.3                          |  6 ++----
>  man3/fmemopen.3                      |  6 ++----
>  man3/fmin.3                          |  6 ++----
>  man3/fmod.3                          |  6 ++----
>  man3/fmtmsg.3                        |  8 +++----
>  man3/fnmatch.3                       |  6 ++----
>  man3/fopen.3                         |  6 ++----
>  man3/fopencookie.3                   |  6 ++----
>  man3/fpathconf.3                     |  6 ++----
>  man3/fpclassify.3                    |  6 ++----
>  man3/fpurge.3                        |  6 ++----
>  man3/fputwc.3                        |  6 ++----
>  man3/fputws.3                        |  6 ++----
>  man3/fread.3                         |  6 ++----
>  man3/frexp.3                         |  6 ++----
>  man3/fseek.3                         |  6 ++----
>  man3/fseeko.3                        |  6 ++----
>  man3/ftime.3                         |  6 ++----
>  man3/ftok.3                          |  6 ++----
>  man3/fts.3                           |  8 +++----
>  man3/ftw.3                           |  8 +++----
>  man3/futimes.3                       |  6 ++----
>  man3/gamma.3                         |  6 ++----
>  man3/gcvt.3                          |  6 ++----
>  man3/get_nprocs.3                    |  6 ++----
>  man3/getaddrinfo.3                   |  8 +++----
>  man3/getaddrinfo_a.3                 |  6 ++----
>  man3/getauxval.3                     |  6 ++----
>  man3/getcontext.3                    |  6 ++----
>  man3/getcwd.3                        |  8 +++----
>  man3/getdate.3                       | 12 +++++++----
>  man3/getdirentries.3                 |  6 ++----
>  man3/getdtablesize.3                 |  6 ++----
>  man3/getenv.3                        |  6 ++----
>  man3/getfsent.3                      | 12 +++++++----
>  man3/getgrent.3                      | 12 +++++++----
>  man3/getgrent_r.3                    | 12 +++++++----
>  man3/getgrnam.3                      | 14 ++++++++----
>  man3/getgrouplist.3                  |  6 ++----
>  man3/gethostbyname.3                 | 28 ++++++++++++++++++++----
>  man3/gethostid.3                     | 12 +++++++----
>  man3/getifaddrs.3                    |  6 ++----
>  man3/getline.3                       |  6 ++----
>  man3/getloadavg.3                    |  6 ++----
>  man3/getlogin.3                      | 16 ++++++++++----
>  man3/getmntent.3                     | 16 ++++++++++----
>  man3/getnameinfo.3                   |  6 ++----
>  man3/getnetent.3                     | 20 +++++++++++++----
>  man3/getnetent_r.3                   |  6 ++----
>  man3/getopt.3                        |  8 +++----
>  man3/getpass.3                       |  6 ++----
>  man3/getprotoent.3                   | 20 +++++++++++++----
>  man3/getprotoent_r.3                 |  6 ++----
>  man3/getpt.3                         |  6 ++----
>  man3/getpw.3                         |  6 ++----
>  man3/getpwent.3                      | 12 +++++++----
>  man3/getpwent_r.3                    | 10 +++++----
>  man3/getpwnam.3                      | 16 ++++++++++----
>  man3/getrpcent.3                     |  8 +++----
>  man3/getrpcent_r.3                   |  6 ++----
>  man3/getrpcport.3                    |  6 ++----
>  man3/gets.3                          |  6 ++----
>  man3/getservent.3                    | 20 +++++++++++++----
>  man3/getservent_r.3                  |  6 ++----
>  man3/getspnam.3                      | 32 ++++++++++++++++++++++++----=

>  man3/getsubopt.3                     |  6 ++----
>  man3/getttyent.3                     |  6 ++----
>  man3/getusershell.3                  |  6 ++----
>  man3/getutent.3                      | 18 ++++++++++++----
>  man3/getutmp.3                       |  6 ++----
>  man3/getw.3                          |  6 ++----
>  man3/getwchar.3                      |  6 ++----
>  man3/glob.3                          | 10 +++++----
>  man3/gnu_get_libc_version.3          |  6 ++----
>  man3/grantpt.3                       |  6 ++----
>  man3/gsignal.3                       |  8 +++----
>  man3/hsearch.3                       |  8 +++----
>  man3/hypot.3                         |  6 ++----
>  man3/iconv.3                         |  6 ++----
>  man3/iconv_close.3                   |  6 ++----
>  man3/iconv_open.3                    |  6 ++----
>  man3/if_nameindex.3                  |  6 ++----
>  man3/if_nametoindex.3                |  6 ++----
>  man3/ilogb.3                         |  6 ++----
>  man3/inet.3                          |  8 +++----
>  man3/inet_ntop.3                     |  6 ++----
>  man3/inet_pton.3                     |  6 ++----
>  man3/initgroups.3                    |  6 ++----
>  man3/insque.3                        |  6 ++----
>  man3/isalpha.3                       |  6 ++----
>  man3/isatty.3                        |  6 ++----
>  man3/isgreater.3                     |  6 ++----
>  man3/iswalnum.3                      |  6 ++----
>  man3/iswalpha.3                      |  6 ++----
>  man3/iswblank.3                      |  6 ++----
>  man3/iswcntrl.3                      |  6 ++----
>  man3/iswctype.3                      |  6 ++----
>  man3/iswdigit.3                      |  6 ++----
>  man3/iswgraph.3                      |  6 ++----
>  man3/iswlower.3                      |  6 ++----
>  man3/iswprint.3                      |  6 ++----
>  man3/iswpunct.3                      |  6 ++----
>  man3/iswspace.3                      |  6 ++----
>  man3/iswupper.3                      |  6 ++----
>  man3/iswxdigit.3                     |  6 ++----
>  man3/j0.3                            | 10 +++++----
>  man3/key_setsecret.3                 |  6 ++----
>  man3/ldexp.3                         |  6 ++----
>  man3/lio_listio.3                    |  6 ++----
>  man3/localeconv.3                    |  8 +++----
>  man3/lockf.3                         |  6 ++----
>  man3/log.3                           |  6 ++----
>  man3/log10.3                         |  6 ++----
>  man3/log1p.3                         |  6 ++----
>  man3/log2.3                          |  6 ++----
>  man3/logb.3                          |  6 ++----
>  man3/login.3                         |  8 +++----
>  man3/lrint.3                         |  6 ++----
>  man3/lround.3                        |  6 ++----
>  man3/lsearch.3                       |  6 ++----
>  man3/lseek64.3                       |  6 ++----
>  man3/makecontext.3                   | 12 +++++++----
>  man3/makedev.3                       |  6 ++----
>  man3/mallinfo.3                      |  8 +++----
>  man3/malloc.3                        |  6 ++----
>  man3/malloc_get_state.3              |  6 ++----
>  man3/malloc_info.3                   |  6 ++----
>  man3/malloc_stats.3                  |  6 ++----
>  man3/malloc_trim.3                   |  6 ++----
>  man3/malloc_usable_size.3            |  6 ++----
>  man3/matherr.3                       |  6 ++----
>  man3/mblen.3                         |  6 ++----
>  man3/mbrlen.3                        |  6 ++----
>  man3/mbrtowc.3                       |  6 ++----
>  man3/mbsinit.3                       |  6 ++----
>  man3/mbsnrtowcs.3                    |  8 +++----
>  man3/mbsrtowcs.3                     |  8 +++----
>  man3/mbstowcs.3                      |  6 ++----
>  man3/mbtowc.3                        |  6 ++----
>  man3/mcheck.3                        |  8 +++----
>  man3/memccpy.3                       |  6 ++----
>  man3/memchr.3                        |  6 ++----
>  man3/memcmp.3                        |  6 ++----
>  man3/memcpy.3                        |  6 ++----
>  man3/memfrob.3                       |  6 ++----
>  man3/memmem.3                        |  6 ++----
>  man3/memmove.3                       |  6 ++----
>  man3/mempcpy.3                       |  6 ++----
>  man3/memset.3                        |  6 ++----
>  man3/mkdtemp.3                       |  6 ++----
>  man3/mkfifo.3                        |  6 ++----
>  man3/mkstemp.3                       |  6 ++----
>  man3/mktemp.3                        |  6 ++----
>  man3/modf.3                          |  6 ++----
>  man3/mq_close.3                      |  6 ++----
>  man3/mq_getattr.3                    |  6 ++----
>  man3/mq_notify.3                     |  6 ++----
>  man3/mq_open.3                       |  6 ++----
>  man3/mq_receive.3                    |  6 ++----
>  man3/mq_send.3                       |  6 ++----
>  man3/mq_unlink.3                     |  6 ++----
>  man3/mtrace.3                        |  6 ++----
>  man3/nan.3                           |  6 ++----
>  man3/nextafter.3                     |  6 ++----
>  man3/nextup.3                        |  6 ++----
>  man3/nl_langinfo.3                   |  6 ++----
>  man3/ntp_gettime.3                   |  6 ++----
>  man3/on_exit.3                       |  6 ++----
>  man3/open_memstream.3                |  6 ++----
>  man3/opendir.3                       |  6 ++----
>  man3/openpty.3                       |  8 +++----
>  man3/perror.3                        |  6 ++----
>  man3/popen.3                         |  6 ++----
>  man3/posix_fallocate.3               |  8 +++----
>  man3/posix_memalign.3                |  8 +++----
>  man3/posix_openpt.3                  |  6 ++----
>  man3/pow.3                           |  6 ++----
>  man3/pow10.3                         |  6 ++----
>  man3/printf.3                        |  6 ++----
>  man3/profil.3                        |  6 ++----
>  man3/psignal.3                       |  6 ++----
>  man3/pthread_attr_init.3             |  6 ++----
>  man3/pthread_attr_setaffinity_np.3   |  6 ++----
>  man3/pthread_attr_setdetachstate.3   |  6 ++----
>  man3/pthread_attr_setguardsize.3     |  6 ++----
>  man3/pthread_attr_setinheritsched.3  |  6 ++----
>  man3/pthread_attr_setschedparam.3    |  6 ++----
>  man3/pthread_attr_setschedpolicy.3   |  6 ++----
>  man3/pthread_attr_setscope.3         |  6 ++----
>  man3/pthread_attr_setsigmask_np.3    |  6 ++----
>  man3/pthread_attr_setstack.3         |  6 ++----
>  man3/pthread_attr_setstackaddr.3     |  6 ++----
>  man3/pthread_attr_setstacksize.3     |  6 ++----
>  man3/pthread_cancel.3                |  6 ++----
>  man3/pthread_cleanup_push.3          |  6 ++----
>  man3/pthread_create.3                |  6 ++----
>  man3/pthread_detach.3                |  6 ++----
>  man3/pthread_equal.3                 |  6 ++----
>  man3/pthread_exit.3                  |  6 ++----
>  man3/pthread_getattr_default_np.3    |  6 ++----
>  man3/pthread_getattr_np.3            |  6 ++----
>  man3/pthread_getcpuclockid.3         |  6 ++----
>  man3/pthread_join.3                  |  6 ++----
>  man3/pthread_kill.3                  |  6 ++----
>  man3/pthread_kill_other_threads_np.3 |  6 ++----
>  man3/pthread_self.3                  |  6 ++----
>  man3/pthread_setaffinity_np.3        |  6 ++----
>  man3/pthread_setcancelstate.3        | 12 +++++++----
>  man3/pthread_setconcurrency.3        |  6 ++----
>  man3/pthread_setname_np.3            |  6 ++----
>  man3/pthread_setschedparam.3         |  6 ++----
>  man3/pthread_setschedprio.3          |  6 ++----
>  man3/pthread_sigmask.3               |  6 ++----
>  man3/pthread_sigqueue.3              |  6 ++----
>  man3/pthread_testcancel.3            |  6 ++----
>  man3/pthread_tryjoin_np.3            |  6 ++----
>  man3/pthread_yield.3                 |  6 ++----
>  man3/ptsname.3                       |  8 +++----
>  man3/putenv.3                        |  6 ++----
>  man3/putgrent.3                      |  6 ++----
>  man3/putpwent.3                      |  6 ++----
>  man3/puts.3                          |  6 ++----
>  man3/putwchar.3                      |  6 ++----
>  man3/qecvt.3                         | 10 +++++----
>  man3/qsort.3                         |  6 ++----
>  man3/raise.3                         |  6 ++----
>  man3/rand.3                          |  6 ++----
>  man3/random.3                        |  6 ++----
>  man3/random_r.3                      |  6 ++----
>  man3/rcmd.3                          | 10 +++++----
>  man3/re_comp.3                       |  6 ++----
>  man3/readdir.3                       |  6 ++----
>  man3/readdir_r.3                     |  6 ++----
>  man3/realpath.3                      |  6 ++----
>  man3/regex.3                         | 10 +++++----
>  man3/remainder.3                     |  6 ++----
>  man3/remove.3                        |  6 ++----
>  man3/remquo.3                        |  6 ++----
>  man3/resolver.3                      |  8 +++----
>  man3/rewinddir.3                     |  6 ++----
>  man3/rexec.3                         |  6 ++----
>  man3/rint.3                          |  6 ++----
>  man3/round.3                         |  6 ++----
>  man3/rpc.3                           |  6 ++----
>  man3/rpmatch.3                       |  6 ++----
>  man3/rtime.3                         |  6 ++----
>  man3/scalb.3                         |  6 ++----
>  man3/scalbln.3                       |  6 ++----
>  man3/scandir.3                       |  8 +++----
>  man3/scanf.3                         |  6 ++----
>  man3/sched_getcpu.3                  |  6 ++----
>  man3/seekdir.3                       |  6 ++----
>  man3/sem_close.3                     |  6 ++----
>  man3/sem_destroy.3                   |  6 ++----
>  man3/sem_getvalue.3                  |  6 ++----
>  man3/sem_init.3                      |  6 ++----
>  man3/sem_open.3                      |  6 ++----
>  man3/sem_post.3                      |  6 ++----
>  man3/sem_unlink.3                    |  6 ++----
>  man3/sem_wait.3                      |  6 ++----
>  man3/setaliasent.3                   |  8 +++----
>  man3/setbuf.3                        |  6 ++----
>  man3/setenv.3                        |  6 ++----
>  man3/setjmp.3                        |  8 +++----
>  man3/setlocale.3                     | 10 ++-------
>  man3/setlogmask.3                    |  6 ++----
>  man3/setnetgrent.3                   | 16 ++++++++++----
>  man3/shm_open.3                      |  6 ++----
>  man3/siginterrupt.3                  |  8 +++----
>  man3/signbit.3                       |  6 ++----
>  man3/significand.3                   |  6 ++----
>  man3/sigpause.3                      |  6 ++----
>  man3/sigqueue.3                      |  6 ++----
>  man3/sigset.3                        |  6 ++----
>  man3/sigsetops.3                     |  6 ++----
>  man3/sigvec.3                        |  6 ++----
>  man3/sigwait.3                       |  6 ++----
>  man3/sin.3                           |  6 ++----
>  man3/sincos.3                        |  6 ++----
>  man3/sinh.3                          |  6 ++----
>  man3/sleep.3                         |  6 ++----
>  man3/sockatmark.3                    |  6 ++----
>  man3/sqrt.3                          |  6 ++----
>  man3/sscanf.3                        |  6 ++----
>  man3/statvfs.3                       |  6 ++----
>  man3/stdarg.3                        |  8 +++----
>  man3/stdio_ext.3                     |  8 +++----
>  man3/stpncpy.3                       |  6 ++----
>  man3/strcasecmp.3                    |  6 ++----
>  man3/strchr.3                        |  6 ++----
>  man3/strcmp.3                        |  6 ++----
>  man3/strcoll.3                       |  6 ++----
>  man3/strcpy.3                        |  6 ++----
>  man3/strdup.3                        |  6 ++----
>  man3/strerror.3                      | 12 +++++++----
>  man3/strfmon.3                       |  8 +++----
>  man3/strfromd.3                      |  6 ++----
>  man3/strfry.3                        |  6 ++----
>  man3/strftime.3                      |  6 ++----
>  man3/strlen.3                        |  6 ++----
>  man3/strncat.3                       |  6 ++----
>  man3/strnlen.3                       |  6 ++----
>  man3/strpbrk.3                       |  6 ++----
>  man3/strptime.3                      |  6 ++----
>  man3/strsep.3                        |  6 ++----
>  man3/strsignal.3                     | 10 +++++----
>  man3/strspn.3                        |  6 ++----
>  man3/strstr.3                        |  8 +++----
>  man3/strtod.3                        |  6 ++----
>  man3/strtoimax.3                     |  6 ++----
>  man3/strtok.3                        |  8 +++----
>  man3/strtol.3                        |  6 ++----
>  man3/strtoul.3                       |  6 ++----
>  man3/strverscmp.3                    |  6 ++----
>  man3/strxfrm.3                       |  6 ++----
>  man3/swab.3                          |  6 ++----
>  man3/sysconf.3                       |  6 ++----
>  man3/syslog.3                        |  8 +++----
>  man3/system.3                        |  6 ++----
>  man3/sysv_signal.3                   |  6 ++----
>  man3/tan.3                           |  6 ++----
>  man3/tanh.3                          |  6 ++----
>  man3/tcgetpgrp.3                     |  6 ++----
>  man3/tcgetsid.3                      |  6 ++----
>  man3/telldir.3                       |  6 ++----
>  man3/tempnam.3                       |  6 ++----
>  man3/termios.3                       |  6 ++----
>  man3/tgamma.3                        |  6 ++----
>  man3/timegm.3                        |  6 ++----
>  man3/tmpfile.3                       |  6 ++----
>  man3/tmpnam.3                        |  8 +++----
>  man3/toascii.3                       |  6 ++----
>  man3/toupper.3                       |  6 ++----
>  man3/towctrans.3                     |  6 ++----
>  man3/towlower.3                      |  8 +++----
>  man3/towupper.3                      |  8 +++----
>  man3/trunc.3                         |  6 ++----
>  man3/tsearch.3                       | 12 +++++++----
>  man3/ttyname.3                       |  8 +++----
>  man3/ttyslot.3                       |  6 ++----
>  man3/tzset.3                         |  6 ++----
>  man3/ualarm.3                        |  6 ++----
>  man3/ulimit.3                        |  6 ++----
>  man3/ungetwc.3                       |  6 ++----
>  man3/unlocked_stdio.3                | 18 ++++++++++++----
>  man3/unlockpt.3                      |  6 ++----
>  man3/updwtmp.3                       |  6 ++----
>  man3/usleep.3                        |  6 ++----
>  man3/wcpcpy.3                        |  6 ++----
>  man3/wcpncpy.3                       |  6 ++----
>  man3/wcrtomb.3                       |  6 ++----
>  man3/wcscasecmp.3                    |  6 ++----
>  man3/wcscat.3                        |  6 ++----
>  man3/wcschr.3                        |  6 ++----
>  man3/wcscmp.3                        |  6 ++----
>  man3/wcscpy.3                        |  6 ++----
>  man3/wcscspn.3                       |  6 ++----
>  man3/wcsdup.3                        |  6 ++----
>  man3/wcslen.3                        |  6 ++----
>  man3/wcsncasecmp.3                   |  6 ++----
>  man3/wcsncat.3                       |  6 ++----
>  man3/wcsncmp.3                       |  6 ++----
>  man3/wcsncpy.3                       |  6 ++----
>  man3/wcsnlen.3                       |  6 ++----
>  man3/wcsnrtombs.3                    |  8 +++----
>  man3/wcspbrk.3                       |  6 ++----
>  man3/wcsrchr.3                       |  6 ++----
>  man3/wcsrtombs.3                     |  8 +++----
>  man3/wcsspn.3                        |  6 ++----
>  man3/wcsstr.3                        |  6 ++----
>  man3/wcstoimax.3                     |  6 ++----
>  man3/wcstok.3                        |  6 ++----
>  man3/wcstombs.3                      |  6 ++----
>  man3/wcswidth.3                      |  6 ++----
>  man3/wctob.3                         |  6 ++----
>  man3/wctomb.3                        |  6 ++----
>  man3/wctrans.3                       |  6 ++----
>  man3/wctype.3                        |  6 ++----
>  man3/wcwidth.3                       |  6 ++----
>  man3/wmemchr.3                       |  6 ++----
>  man3/wmemcmp.3                       |  6 ++----
>  man3/wmemcpy.3                       |  6 ++----
>  man3/wmemmove.3                      |  6 ++----
>  man3/wmemset.3                       |  6 ++----
>  man3/wordexp.3                       | 10 +++++----
>  man3/wprintf.3                       |  6 ++----
>  man3/xcrypt.3                        |  6 ++----
>  man3/xdr.3                           |  6 ++----
>  man3/y0.3                            | 10 +++++----
>  man7/namespaces.7                    |  4 ----
>  525 files changed, 1422 insertions(+), 2100 deletions(-)
> [chop]
>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Fi8XLqCck0FKEdWPCIfSgGVM--

--------------QvJFlLWcLDIhAKLf5rnfbe06
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmS5NyoACgkQnowa+77/
2zKNUQ/9EM/G6EPQFZlD7JE8GD3Z1j+zqSziNHu2t04+k5s9fZQ4yidgrW1qqBoH
2fnv1btvt4UROCtBwrLqCadRVSKWbQjYRaX3QUMZGVftGYOD9Cn+6d05GTuo9s23
sTw7U6b/8tbWfHY9hryLwCJPTtO0jewEOnt7Pxr9O6CDX+R6/Ipp05PfN3WLhHdb
Gsxf507bd7fuCx2lSQKH2so3cAB2yayREatERKwc+/Pj82J/AHsQbhni8RTb+GTt
WnHDLSeT9pYqhiMP8FVzMNPW3Mpyn1IlF8B6LquFvv3nYyMpBhd/v7FVt9WT4wim
R4eca+h4WYKV0aRhWl3lbKo1krEBiPV6us7YA0kpCH5XGoEW20QUyZ1uUxw/HohY
Z64u4h4cZxq++rtArmbo+aPukjOtOYriHPKypMIxdxi/anPuIbAZl1yZCHZywpUa
djMI92sYkMz3O1RE+F4frP5Sy9U2J217ArjKZ295dgbDvvpX5hU1g1JqFnIni8fH
NxqwPiye2PKaRgfYAINmwZB7T1SNCn8oiWkRCVDsVkCbKPcZ+AIpWvCbMgqisAOc
m9dQp0tcc8VhmCooYR1hdNbw3TMxx7hVuWcv9iG3YktwdYeh/SNH7GzgAsMWB1U8
fFRL7S1RV731KE6itCP2OYlhwSiA8qRJhUWLYRhAwg0i3MXR8v4=
=GyIG
-----END PGP SIGNATURE-----

--------------QvJFlLWcLDIhAKLf5rnfbe06--
