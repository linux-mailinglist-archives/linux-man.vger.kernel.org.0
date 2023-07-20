Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D54D75A49F
	for <lists+linux-man@lfdr.de>; Thu, 20 Jul 2023 05:05:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229704AbjGTDFN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Jul 2023 23:05:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229789AbjGTDFM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Jul 2023 23:05:12 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10E7C210C
        for <linux-man@vger.kernel.org>; Wed, 19 Jul 2023 20:05:08 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-3a3efebcc24so246257b6e.1
        for <linux-man@vger.kernel.org>; Wed, 19 Jul 2023 20:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689822307; x=1690427107;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kp/KoM+VCPiwqJTukHhna+YhveXgmVcPBrH+7RQZjUs=;
        b=XU0fip1Q27M37R7kFqq3T8+ewUV8hDfO+EKAw4SKYAarv/ConRdSbcXK+/H4EAqGJW
         1OfhnDAxE5P9iZ434vMpMJG5/SdimvbXwszY6pS/wFcHBI1kuRrz2c3x0qFkZxlzZbVn
         DhaOhBeFJZL3YtIM6b/AgL0nKrC1MFOk7ZOY3uh8Vs05N4CQCZlMpi9vDVp/5BHmMg9u
         697fTXegyYQ8pjt2+8xMACD3v9hgO4a75Yq/cLERbcNYIaQ65w5r3yVfp01H6H0iIfmA
         WyyC+ajWxRlCqxSorp+vmDx82I5TnrSKj2/LoGbtagGjvoWjhae2BfeaULVEFrz9z0vX
         vLUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689822307; x=1690427107;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kp/KoM+VCPiwqJTukHhna+YhveXgmVcPBrH+7RQZjUs=;
        b=Xwoyk8KuiBRZlPCZtfPt/CKThR0Y//HFtFs2pphX8Yn4b5dUuGciKSDoaW9DrGRYcO
         AiWI4/i+eb8HwMSUkyxatddt14wV88LP61X2GDffO7+G+Wh6Uuu1PbZk96LyBvHBhQjC
         o/iuhfY1EIC/MvT6ZR2EQa/Gfktyd0MrI+XSFbqmk3r4bGADNgmvYsRoiM/NqN1ekRmC
         jMcgctkKItOknA7KhxkolVazrDVvmyA8J6R7uSRUe1K5HWLSLRAjYNgvo0ShG7L6RfCi
         kA7ROJ103LPuNA9eg554IekPjlm8irza/FJzjfUM3dLvp4UsbxawqKJw51ajfryBXQSV
         xYsw==
X-Gm-Message-State: ABy/qLZzcR+7xhDs24Vy/iazE9pJIhFU7VuwGctt1101vJ5R08hk7A78
        OcrO2IUju92jyBBEsqrjyyFtMKMUF/E=
X-Google-Smtp-Source: APBJJlECRDgAwVZHVM4AP+pnpNqnAwPOa2Ozehr06cKore+aQ70Jeq6HYIiQPKHchhwLVRs+hPiYMg==
X-Received: by 2002:a05:6808:1412:b0:3a3:bde0:4a3b with SMTP id w18-20020a056808141200b003a3bde04a3bmr503462oiv.16.1689822306633;
        Wed, 19 Jul 2023 20:05:06 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id y24-20020a056808061800b003a390ca26aasm2456329oih.5.2023.07.19.20.05.05
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jul 2023 20:05:05 -0700 (PDT)
Date:   Wed, 19 Jul 2023 22:05:03 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] man*/: ffix (un-bracket tables)
Message-ID: <20230720030503.2vyjv2kksisetwui@illithid>
References: <20230720020612.yg4dfhxummbc5blv@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="5yy6komcrxrjkcng"
Content-Disposition: inline
In-Reply-To: <20230720020612.yg4dfhxummbc5blv@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--5yy6komcrxrjkcng
Content-Type: multipart/mixed; boundary="ubolocreqnsceyga"
Content-Disposition: inline


--ubolocreqnsceyga
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Second try.  Sending the diff as a compressed attachment because it was
rejected by vger as inline text.

=46rom 4116bdd0d95190f008cb40285afe6ebaa4ad9397 Mon Sep 17 00:00:00 2001
=46rom: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Date: Wed, 19 Jul 2023 20:37:55 -0500
Subject: [PATCH 2/2] man*/: ffix (un-bracket tables)

* Stop disabling adjustment and automatic hyphenation before tables, and
  incorrectly "restoring" it afterward.  In addition to repetitious
  boilerplate around tables, the `ad` and `hy` requests, when not given
  arguments, do not behave as many man page authors expect.  If
  adjustment was initially disabled when rendering the page, it was
  being activated after `TE` calls, frustrating the desire of the
  reader.  Furthermore, `hy` when given no argument enables automatic
  hyphenation in mode "1", which is not an appropriate value for the
  TeX-based hyphenation patterns for English that groff has used for
  over 30 years.  And analogously to `ad`, a simple `hy` request would
  reactivate automatic hyphenation even if the reader had disabled it.

  Moreover, such fiddling is often unnecessary.  tbl(1) from groff
  1.23.0 describes how tbl(1) has always worked, dating back to Michael
  Lesk's original implementation at Bell Labs in the 1970s.

  "Ordinarily, a table entry is typeset rigidly.  It is not filled,
  broken, hyphenated, adjusted, or populated with additional inter-
  sentence space.  ...  Text blocks are formatted as was the text prior
  to the table, modified by applicable column descriptors.  ...  Add na
  or ad requests to the beginning of a text block to alter its
  adjustment distinctly from other text in the document.  As with other
  table entries, when a text block ends, any alterations to formatting
  parameters are discarded.  They do not affect subsequent table
  entries, not even other text blocks."

* Apropos of the foregoing, add `na` and `nh` requests to the
  "Interface" columns of MT-safety tables in pages' "ATTRIBUTES"
  sections, so that C function names are not inappropriately hyphenated.

I produced this change with the following GNU sed script.

:start
/^\.ad l/{N;/\n\.nh/{N;/\n\.TS/s/.*/.TS/}}
/^\.TE/{N;/\n\.hy/{N;/\n\.ad/s/.*/.TE/}}
/^Interface.*Attribute.*Value/{N;/\nT{/s/.*/&\n.na\n.nh/
:loop
n
/T{/s/.*/&\n.na\n.nh/
/^\.TE/b start;
b loop
}
---
 man2/adjtimex.2                      |  2 ++
 man2/clock_getres.2                  |  6 ++----
 man2/eventfd.2                       |  6 ++----
 man2/getrlimit.2                     |  6 ++----
 man2/getrusage.2                     |  6 ++----
 man2/mmap.2                          |  6 ++----
 man2/sigaltstack.2                   |  6 ++----
 man2/utimensat.2                     |  6 ++----
 man3/__ppc_set_ppr_med.3             |  6 ++----
 man3/__ppc_yield.3                   |  6 ++----
 man3/a64l.3                          |  8 +++----
 man3/abort.3                         |  6 ++----
 man3/abs.3                           |  6 ++----
 man3/acos.3                          |  6 ++----
 man3/acosh.3                         |  6 ++----
 man3/addseverity.3                   |  6 ++----
 man3/adjtime.3                       |  6 ++----
 man3/aio_cancel.3                    |  6 ++----
 man3/aio_error.3                     |  6 ++----
 man3/aio_fsync.3                     |  6 ++----
 man3/aio_read.3                      |  6 ++----
 man3/aio_return.3                    |  6 ++----
 man3/aio_suspend.3                   |  6 ++----
 man3/aio_write.3                     |  6 ++----
 man3/alloca.3                        |  6 ++----
 man3/arc4random.3                    |  6 ++----
 man3/argz_add.3                      |  6 ++----
 man3/asin.3                          |  6 ++----
 man3/asinh.3                         |  6 ++----
 man3/asprintf.3                      |  6 ++----
 man3/assert.3                        |  6 ++----
 man3/assert_perror.3                 |  6 ++----
 man3/atan.3                          |  6 ++----
 man3/atan2.3                         |  6 ++----
 man3/atanh.3                         |  6 ++----
 man3/atexit.3                        |  6 ++----
 man3/atof.3                          |  6 ++----
 man3/atoi.3                          |  6 ++----
 man3/backtrace.3                     |  6 ++----
 man3/basename.3                      |  6 ++----
 man3/bcopy.3                         |  6 ++----
 man3/bindresvport.3                  |  8 +++----
 man3/bsd_signal.3                    |  6 ++----
 man3/bsearch.3                       |  6 ++----
 man3/btowc.3                         |  6 ++----
 man3/byteorder.3                     |  6 ++----
 man3/bzero.3                         |  6 ++----
 man3/cabs.3                          |  6 ++----
 man3/cacos.3                         |  6 ++----
 man3/cacosh.3                        |  6 ++----
 man3/canonicalize_file_name.3        |  6 ++----
 man3/carg.3                          |  6 ++----
 man3/casin.3                         |  6 ++----
 man3/casinh.3                        |  6 ++----
 man3/catan.3                         |  6 ++----
 man3/catanh.3                        |  6 ++----
 man3/catgets.3                       |  6 ++----
 man3/catopen.3                       |  8 +++----
 man3/cbrt.3                          |  6 ++----
 man3/ccos.3                          |  6 ++----
 man3/ceil.3                          |  6 ++----
 man3/cexp.3                          |  6 ++----
 man3/cfree.3                         |  6 ++----
 man3/cimag.3                         |  6 ++----
 man3/clearenv.3                      |  6 ++----
 man3/clock.3                         |  6 ++----
 man3/clock_getcpuclockid.3           |  6 ++----
 man3/clog.3                          |  6 ++----
 man3/clog10.3                        |  6 ++----
 man3/closedir.3                      |  6 ++----
 man3/confstr.3                       |  6 ++----
 man3/conj.3                          |  6 ++----
 man3/copysign.3                      |  6 ++----
 man3/cos.3                           |  6 ++----
 man3/cosh.3                          |  6 ++----
 man3/cpow.3                          |  6 ++----
 man3/cproj.3                         |  6 ++----
 man3/creal.3                         |  6 ++----
 man3/crypt.3                         |  8 +++----
 man3/csin.3                          |  6 ++----
 man3/csinh.3                         |  6 ++----
 man3/csqrt.3                         |  6 ++----
 man3/ctan.3                          |  6 ++----
 man3/ctanh.3                         |  6 ++----
 man3/ctermid.3                       |  6 ++----
 man3/ctime.3                         | 24 +++++++++++++++++----
 man3/daemon.3                        |  6 ++----
 man3/des_crypt.3                     |  6 ++----
 man3/difftime.3                      |  6 ++----
 man3/dirfd.3                         |  6 ++----
 man3/div.3                           |  6 ++----
 man3/dl_iterate_phdr.3               |  6 ++----
 man3/dladdr.3                        |  6 ++----
 man3/dlerror.3                       |  6 ++----
 man3/dlinfo.3                        |  6 ++----
 man3/dlopen.3                        |  6 ++----
 man3/dlsym.3                         |  6 ++----
 man3/drand48.3                       |  8 +++----
 man3/drand48_r.3                     |  6 ++----
 man3/dysize.3                        |  6 ++----
 man3/ecvt.3                          |  8 +++----
 man3/ecvt_r.3                        |  6 ++----
 man3/encrypt.3                       |  8 +++----
 man3/envz_add.3                      |  6 ++----
 man3/erf.3                           |  6 ++----
 man3/erfc.3                          |  6 ++----
 man3/err.3                           |  6 ++----
 man3/error.3                         | 10 +++++----
 man3/ether_aton.3                    |  8 +++----
 man3/euidaccess.3                    |  6 ++----
 man3/exec.3                          |  8 +++----
 man3/exit.3                          |  6 ++----
 man3/exp.3                           |  6 ++----
 man3/exp10.3                         |  6 ++----
 man3/exp2.3                          |  6 ++----
 man3/expm1.3                         |  6 ++----
 man3/fabs.3                          |  6 ++----
 man3/fclose.3                        |  6 ++----
 man3/fcloseall.3                     |  6 ++----
 man3/fdim.3                          |  6 ++----
 man3/fenv.3                          |  8 +++----
 man3/ferror.3                        |  6 ++----
 man3/fexecve.3                       |  6 ++----
 man3/fflush.3                        |  6 ++----
 man3/ffs.3                           |  6 ++----
 man3/fgetc.3                         |  6 ++----
 man3/fgetgrent.3                     |  6 ++----
 man3/fgetpwent.3                     |  6 ++----
 man3/fgetwc.3                        |  6 ++----
 man3/fgetws.3                        |  6 ++----
 man3/fileno.3                        |  6 ++----
 man3/finite.3                        |  6 ++----
 man3/flockfile.3                     |  6 ++----
 man3/floor.3                         |  6 ++----
 man3/fma.3                           |  6 ++----
 man3/fmax.3                          |  6 ++----
 man3/fmemopen.3                      |  6 ++----
 man3/fmin.3                          |  6 ++----
 man3/fmod.3                          |  6 ++----
 man3/fmtmsg.3                        |  8 +++----
 man3/fnmatch.3                       |  6 ++----
 man3/fopen.3                         |  6 ++----
 man3/fopencookie.3                   |  6 ++----
 man3/fpathconf.3                     |  6 ++----
 man3/fpclassify.3                    |  6 ++----
 man3/fpurge.3                        |  6 ++----
 man3/fputwc.3                        |  6 ++----
 man3/fputws.3                        |  6 ++----
 man3/fread.3                         |  6 ++----
 man3/frexp.3                         |  6 ++----
 man3/fseek.3                         |  6 ++----
 man3/fseeko.3                        |  6 ++----
 man3/ftime.3                         |  6 ++----
 man3/ftok.3                          |  6 ++----
 man3/fts.3                           |  8 +++----
 man3/ftw.3                           |  8 +++----
 man3/futimes.3                       |  6 ++----
 man3/gamma.3                         |  6 ++----
 man3/gcvt.3                          |  6 ++----
 man3/get_nprocs.3                    |  6 ++----
 man3/getaddrinfo.3                   |  8 +++----
 man3/getaddrinfo_a.3                 |  6 ++----
 man3/getauxval.3                     |  6 ++----
 man3/getcontext.3                    |  6 ++----
 man3/getcwd.3                        |  8 +++----
 man3/getdate.3                       | 12 +++++++----
 man3/getdirentries.3                 |  6 ++----
 man3/getdtablesize.3                 |  6 ++----
 man3/getenv.3                        |  6 ++----
 man3/getfsent.3                      | 12 +++++++----
 man3/getgrent.3                      | 12 +++++++----
 man3/getgrent_r.3                    | 12 +++++++----
 man3/getgrnam.3                      | 14 ++++++++----
 man3/getgrouplist.3                  |  6 ++----
 man3/gethostbyname.3                 | 28 ++++++++++++++++++++----
 man3/gethostid.3                     | 12 +++++++----
 man3/getifaddrs.3                    |  6 ++----
 man3/getline.3                       |  6 ++----
 man3/getloadavg.3                    |  6 ++----
 man3/getlogin.3                      | 16 ++++++++++----
 man3/getmntent.3                     | 16 ++++++++++----
 man3/getnameinfo.3                   |  6 ++----
 man3/getnetent.3                     | 20 +++++++++++++----
 man3/getnetent_r.3                   |  6 ++----
 man3/getopt.3                        |  8 +++----
 man3/getpass.3                       |  6 ++----
 man3/getprotoent.3                   | 20 +++++++++++++----
 man3/getprotoent_r.3                 |  6 ++----
 man3/getpt.3                         |  6 ++----
 man3/getpw.3                         |  6 ++----
 man3/getpwent.3                      | 12 +++++++----
 man3/getpwent_r.3                    | 10 +++++----
 man3/getpwnam.3                      | 16 ++++++++++----
 man3/getrpcent.3                     |  8 +++----
 man3/getrpcent_r.3                   |  6 ++----
 man3/getrpcport.3                    |  6 ++----
 man3/gets.3                          |  6 ++----
 man3/getservent.3                    | 20 +++++++++++++----
 man3/getservent_r.3                  |  6 ++----
 man3/getspnam.3                      | 32 ++++++++++++++++++++++++----
 man3/getsubopt.3                     |  6 ++----
 man3/getttyent.3                     |  6 ++----
 man3/getusershell.3                  |  6 ++----
 man3/getutent.3                      | 18 ++++++++++++----
 man3/getutmp.3                       |  6 ++----
 man3/getw.3                          |  6 ++----
 man3/getwchar.3                      |  6 ++----
 man3/glob.3                          | 10 +++++----
 man3/gnu_get_libc_version.3          |  6 ++----
 man3/grantpt.3                       |  6 ++----
 man3/gsignal.3                       |  8 +++----
 man3/hsearch.3                       |  8 +++----
 man3/hypot.3                         |  6 ++----
 man3/iconv.3                         |  6 ++----
 man3/iconv_close.3                   |  6 ++----
 man3/iconv_open.3                    |  6 ++----
 man3/if_nameindex.3                  |  6 ++----
 man3/if_nametoindex.3                |  6 ++----
 man3/ilogb.3                         |  6 ++----
 man3/inet.3                          |  8 +++----
 man3/inet_ntop.3                     |  6 ++----
 man3/inet_pton.3                     |  6 ++----
 man3/initgroups.3                    |  6 ++----
 man3/insque.3                        |  6 ++----
 man3/isalpha.3                       |  6 ++----
 man3/isatty.3                        |  6 ++----
 man3/isgreater.3                     |  6 ++----
 man3/iswalnum.3                      |  6 ++----
 man3/iswalpha.3                      |  6 ++----
 man3/iswblank.3                      |  6 ++----
 man3/iswcntrl.3                      |  6 ++----
 man3/iswctype.3                      |  6 ++----
 man3/iswdigit.3                      |  6 ++----
 man3/iswgraph.3                      |  6 ++----
 man3/iswlower.3                      |  6 ++----
 man3/iswprint.3                      |  6 ++----
 man3/iswpunct.3                      |  6 ++----
 man3/iswspace.3                      |  6 ++----
 man3/iswupper.3                      |  6 ++----
 man3/iswxdigit.3                     |  6 ++----
 man3/j0.3                            | 10 +++++----
 man3/key_setsecret.3                 |  6 ++----
 man3/ldexp.3                         |  6 ++----
 man3/lio_listio.3                    |  6 ++----
 man3/localeconv.3                    |  8 +++----
 man3/lockf.3                         |  6 ++----
 man3/log.3                           |  6 ++----
 man3/log10.3                         |  6 ++----
 man3/log1p.3                         |  6 ++----
 man3/log2.3                          |  6 ++----
 man3/logb.3                          |  6 ++----
 man3/login.3                         |  8 +++----
 man3/lrint.3                         |  6 ++----
 man3/lround.3                        |  6 ++----
 man3/lsearch.3                       |  6 ++----
 man3/lseek64.3                       |  6 ++----
 man3/makecontext.3                   | 12 +++++++----
 man3/makedev.3                       |  6 ++----
 man3/mallinfo.3                      |  8 +++----
 man3/malloc.3                        |  6 ++----
 man3/malloc_get_state.3              |  6 ++----
 man3/malloc_info.3                   |  6 ++----
 man3/malloc_stats.3                  |  6 ++----
 man3/malloc_trim.3                   |  6 ++----
 man3/malloc_usable_size.3            |  6 ++----
 man3/matherr.3                       |  6 ++----
 man3/mblen.3                         |  6 ++----
 man3/mbrlen.3                        |  6 ++----
 man3/mbrtowc.3                       |  6 ++----
 man3/mbsinit.3                       |  6 ++----
 man3/mbsnrtowcs.3                    |  8 +++----
 man3/mbsrtowcs.3                     |  8 +++----
 man3/mbstowcs.3                      |  6 ++----
 man3/mbtowc.3                        |  6 ++----
 man3/mcheck.3                        |  8 +++----
 man3/memccpy.3                       |  6 ++----
 man3/memchr.3                        |  6 ++----
 man3/memcmp.3                        |  6 ++----
 man3/memcpy.3                        |  6 ++----
 man3/memfrob.3                       |  6 ++----
 man3/memmem.3                        |  6 ++----
 man3/memmove.3                       |  6 ++----
 man3/mempcpy.3                       |  6 ++----
 man3/memset.3                        |  6 ++----
 man3/mkdtemp.3                       |  6 ++----
 man3/mkfifo.3                        |  6 ++----
 man3/mkstemp.3                       |  6 ++----
 man3/mktemp.3                        |  6 ++----
 man3/modf.3                          |  6 ++----
 man3/mq_close.3                      |  6 ++----
 man3/mq_getattr.3                    |  6 ++----
 man3/mq_notify.3                     |  6 ++----
 man3/mq_open.3                       |  6 ++----
 man3/mq_receive.3                    |  6 ++----
 man3/mq_send.3                       |  6 ++----
 man3/mq_unlink.3                     |  6 ++----
 man3/mtrace.3                        |  6 ++----
 man3/nan.3                           |  6 ++----
 man3/nextafter.3                     |  6 ++----
 man3/nextup.3                        |  6 ++----
 man3/nl_langinfo.3                   |  6 ++----
 man3/ntp_gettime.3                   |  6 ++----
 man3/on_exit.3                       |  6 ++----
 man3/open_memstream.3                |  6 ++----
 man3/opendir.3                       |  6 ++----
 man3/openpty.3                       |  8 +++----
 man3/perror.3                        |  6 ++----
 man3/popen.3                         |  6 ++----
 man3/posix_fallocate.3               |  8 +++----
 man3/posix_memalign.3                |  8 +++----
 man3/posix_openpt.3                  |  6 ++----
 man3/pow.3                           |  6 ++----
 man3/pow10.3                         |  6 ++----
 man3/printf.3                        |  6 ++----
 man3/profil.3                        |  6 ++----
 man3/psignal.3                       |  6 ++----
 man3/pthread_attr_init.3             |  6 ++----
 man3/pthread_attr_setaffinity_np.3   |  6 ++----
 man3/pthread_attr_setdetachstate.3   |  6 ++----
 man3/pthread_attr_setguardsize.3     |  6 ++----
 man3/pthread_attr_setinheritsched.3  |  6 ++----
 man3/pthread_attr_setschedparam.3    |  6 ++----
 man3/pthread_attr_setschedpolicy.3   |  6 ++----
 man3/pthread_attr_setscope.3         |  6 ++----
 man3/pthread_attr_setsigmask_np.3    |  6 ++----
 man3/pthread_attr_setstack.3         |  6 ++----
 man3/pthread_attr_setstackaddr.3     |  6 ++----
 man3/pthread_attr_setstacksize.3     |  6 ++----
 man3/pthread_cancel.3                |  6 ++----
 man3/pthread_cleanup_push.3          |  6 ++----
 man3/pthread_create.3                |  6 ++----
 man3/pthread_detach.3                |  6 ++----
 man3/pthread_equal.3                 |  6 ++----
 man3/pthread_exit.3                  |  6 ++----
 man3/pthread_getattr_default_np.3    |  6 ++----
 man3/pthread_getattr_np.3            |  6 ++----
 man3/pthread_getcpuclockid.3         |  6 ++----
 man3/pthread_join.3                  |  6 ++----
 man3/pthread_kill.3                  |  6 ++----
 man3/pthread_kill_other_threads_np.3 |  6 ++----
 man3/pthread_self.3                  |  6 ++----
 man3/pthread_setaffinity_np.3        |  6 ++----
 man3/pthread_setcancelstate.3        | 12 +++++++----
 man3/pthread_setconcurrency.3        |  6 ++----
 man3/pthread_setname_np.3            |  6 ++----
 man3/pthread_setschedparam.3         |  6 ++----
 man3/pthread_setschedprio.3          |  6 ++----
 man3/pthread_sigmask.3               |  6 ++----
 man3/pthread_sigqueue.3              |  6 ++----
 man3/pthread_testcancel.3            |  6 ++----
 man3/pthread_tryjoin_np.3            |  6 ++----
 man3/pthread_yield.3                 |  6 ++----
 man3/ptsname.3                       |  8 +++----
 man3/putenv.3                        |  6 ++----
 man3/putgrent.3                      |  6 ++----
 man3/putpwent.3                      |  6 ++----
 man3/puts.3                          |  6 ++----
 man3/putwchar.3                      |  6 ++----
 man3/qecvt.3                         | 10 +++++----
 man3/qsort.3                         |  6 ++----
 man3/raise.3                         |  6 ++----
 man3/rand.3                          |  6 ++----
 man3/random.3                        |  6 ++----
 man3/random_r.3                      |  6 ++----
 man3/rcmd.3                          | 10 +++++----
 man3/re_comp.3                       |  6 ++----
 man3/readdir.3                       |  6 ++----
 man3/readdir_r.3                     |  6 ++----
 man3/realpath.3                      |  6 ++----
 man3/regex.3                         | 10 +++++----
 man3/remainder.3                     |  6 ++----
 man3/remove.3                        |  6 ++----
 man3/remquo.3                        |  6 ++----
 man3/resolver.3                      |  8 +++----
 man3/rewinddir.3                     |  6 ++----
 man3/rexec.3                         |  6 ++----
 man3/rint.3                          |  6 ++----
 man3/round.3                         |  6 ++----
 man3/rpc.3                           |  6 ++----
 man3/rpmatch.3                       |  6 ++----
 man3/rtime.3                         |  6 ++----
 man3/scalb.3                         |  6 ++----
 man3/scalbln.3                       |  6 ++----
 man3/scandir.3                       |  8 +++----
 man3/scanf.3                         |  6 ++----
 man3/sched_getcpu.3                  |  6 ++----
 man3/seekdir.3                       |  6 ++----
 man3/sem_close.3                     |  6 ++----
 man3/sem_destroy.3                   |  6 ++----
 man3/sem_getvalue.3                  |  6 ++----
 man3/sem_init.3                      |  6 ++----
 man3/sem_open.3                      |  6 ++----
 man3/sem_post.3                      |  6 ++----
 man3/sem_unlink.3                    |  6 ++----
 man3/sem_wait.3                      |  6 ++----
 man3/setaliasent.3                   |  8 +++----
 man3/setbuf.3                        |  6 ++----
 man3/setenv.3                        |  6 ++----
 man3/setjmp.3                        |  8 +++----
 man3/setlocale.3                     | 10 ++-------
 man3/setlogmask.3                    |  6 ++----
 man3/setnetgrent.3                   | 16 ++++++++++----
 man3/shm_open.3                      |  6 ++----
 man3/siginterrupt.3                  |  8 +++----
 man3/signbit.3                       |  6 ++----
 man3/significand.3                   |  6 ++----
 man3/sigpause.3                      |  6 ++----
 man3/sigqueue.3                      |  6 ++----
 man3/sigset.3                        |  6 ++----
 man3/sigsetops.3                     |  6 ++----
 man3/sigvec.3                        |  6 ++----
 man3/sigwait.3                       |  6 ++----
 man3/sin.3                           |  6 ++----
 man3/sincos.3                        |  6 ++----
 man3/sinh.3                          |  6 ++----
 man3/sleep.3                         |  6 ++----
 man3/sockatmark.3                    |  6 ++----
 man3/sqrt.3                          |  6 ++----
 man3/sscanf.3                        |  6 ++----
 man3/statvfs.3                       |  6 ++----
 man3/stdarg.3                        |  8 +++----
 man3/stdio_ext.3                     |  8 +++----
 man3/stpncpy.3                       |  6 ++----
 man3/strcasecmp.3                    |  6 ++----
 man3/strchr.3                        |  6 ++----
 man3/strcmp.3                        |  6 ++----
 man3/strcoll.3                       |  6 ++----
 man3/strcpy.3                        |  6 ++----
 man3/strdup.3                        |  6 ++----
 man3/strerror.3                      | 12 +++++++----
 man3/strfmon.3                       |  8 +++----
 man3/strfromd.3                      |  6 ++----
 man3/strfry.3                        |  6 ++----
 man3/strftime.3                      |  6 ++----
 man3/strlen.3                        |  6 ++----
 man3/strncat.3                       |  6 ++----
 man3/strnlen.3                       |  6 ++----
 man3/strpbrk.3                       |  6 ++----
 man3/strptime.3                      |  6 ++----
 man3/strsep.3                        |  6 ++----
 man3/strsignal.3                     | 10 +++++----
 man3/strspn.3                        |  6 ++----
 man3/strstr.3                        |  8 +++----
 man3/strtod.3                        |  6 ++----
 man3/strtoimax.3                     |  6 ++----
 man3/strtok.3                        |  8 +++----
 man3/strtol.3                        |  6 ++----
 man3/strtoul.3                       |  6 ++----
 man3/strverscmp.3                    |  6 ++----
 man3/strxfrm.3                       |  6 ++----
 man3/swab.3                          |  6 ++----
 man3/sysconf.3                       |  6 ++----
 man3/syslog.3                        |  8 +++----
 man3/system.3                        |  6 ++----
 man3/sysv_signal.3                   |  6 ++----
 man3/tan.3                           |  6 ++----
 man3/tanh.3                          |  6 ++----
 man3/tcgetpgrp.3                     |  6 ++----
 man3/tcgetsid.3                      |  6 ++----
 man3/telldir.3                       |  6 ++----
 man3/tempnam.3                       |  6 ++----
 man3/termios.3                       |  6 ++----
 man3/tgamma.3                        |  6 ++----
 man3/timegm.3                        |  6 ++----
 man3/tmpfile.3                       |  6 ++----
 man3/tmpnam.3                        |  8 +++----
 man3/toascii.3                       |  6 ++----
 man3/toupper.3                       |  6 ++----
 man3/towctrans.3                     |  6 ++----
 man3/towlower.3                      |  8 +++----
 man3/towupper.3                      |  8 +++----
 man3/trunc.3                         |  6 ++----
 man3/tsearch.3                       | 12 +++++++----
 man3/ttyname.3                       |  8 +++----
 man3/ttyslot.3                       |  6 ++----
 man3/tzset.3                         |  6 ++----
 man3/ualarm.3                        |  6 ++----
 man3/ulimit.3                        |  6 ++----
 man3/ungetwc.3                       |  6 ++----
 man3/unlocked_stdio.3                | 18 ++++++++++++----
 man3/unlockpt.3                      |  6 ++----
 man3/updwtmp.3                       |  6 ++----
 man3/usleep.3                        |  6 ++----
 man3/wcpcpy.3                        |  6 ++----
 man3/wcpncpy.3                       |  6 ++----
 man3/wcrtomb.3                       |  6 ++----
 man3/wcscasecmp.3                    |  6 ++----
 man3/wcscat.3                        |  6 ++----
 man3/wcschr.3                        |  6 ++----
 man3/wcscmp.3                        |  6 ++----
 man3/wcscpy.3                        |  6 ++----
 man3/wcscspn.3                       |  6 ++----
 man3/wcsdup.3                        |  6 ++----
 man3/wcslen.3                        |  6 ++----
 man3/wcsncasecmp.3                   |  6 ++----
 man3/wcsncat.3                       |  6 ++----
 man3/wcsncmp.3                       |  6 ++----
 man3/wcsncpy.3                       |  6 ++----
 man3/wcsnlen.3                       |  6 ++----
 man3/wcsnrtombs.3                    |  8 +++----
 man3/wcspbrk.3                       |  6 ++----
 man3/wcsrchr.3                       |  6 ++----
 man3/wcsrtombs.3                     |  8 +++----
 man3/wcsspn.3                        |  6 ++----
 man3/wcsstr.3                        |  6 ++----
 man3/wcstoimax.3                     |  6 ++----
 man3/wcstok.3                        |  6 ++----
 man3/wcstombs.3                      |  6 ++----
 man3/wcswidth.3                      |  6 ++----
 man3/wctob.3                         |  6 ++----
 man3/wctomb.3                        |  6 ++----
 man3/wctrans.3                       |  6 ++----
 man3/wctype.3                        |  6 ++----
 man3/wcwidth.3                       |  6 ++----
 man3/wmemchr.3                       |  6 ++----
 man3/wmemcmp.3                       |  6 ++----
 man3/wmemcpy.3                       |  6 ++----
 man3/wmemmove.3                      |  6 ++----
 man3/wmemset.3                       |  6 ++----
 man3/wordexp.3                       | 10 +++++----
 man3/wprintf.3                       |  6 ++----
 man3/xcrypt.3                        |  6 ++----
 man3/xdr.3                           |  6 ++----
 man3/y0.3                            | 10 +++++----
 man7/namespaces.7                    |  4 ----
 525 files changed, 1422 insertions(+), 2100 deletions(-)
[chop]

Regards,
Branden

--ubolocreqnsceyga
Content-Type: application/gzip
Content-Disposition: attachment;
	filename="0002-man-ffix-un-bracket-tables.patch.gz"
Content-Transfer-Encoding: base64

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

--ubolocreqnsceyga--

--5yy6komcrxrjkcng
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmS4pFgACgkQ0Z6cfXEm
bc7Y5A/+K3CEcshs79icxSNiv1apleXfWZaPiQlK0MM/hhk+zdS5EVNOrVr9uiU+
1iDFMYjW0WZiuNh+kGbD/PCdLRTcNgry5rRGGb9588+rJvmS6hBukXzZVFKkrTEA
pqZ8IsmjqmOSQD3hXDYadohVk8paefMXoQj7xg8gzUHGFH29upuNw9910fEPJj/S
lPSWvl1w0IZqrhQAZSpkkRj4abNEQowdf6g/r9SqVm7VpKJAhAlY6wWH5/Cf4bgr
gRD0XEv1E36yzfOBfZZ2Kuk5QmqgYsNFPCWEW5FlnYANxCS+MsCL9AyfrA12hEgr
Ay5LYrFekc0VOHqdX2En0H5Rqadha5noXTMMxq8CkxhZrL6AN2nG9BSTFOW7oyPI
0URI7/SgCFIdZLDwHfRmBqpxgy+aECzf/9xUlRIFw7/i8xQfhJqQOStUg66CskDc
QoQSD04m8IV+83coH7YZdeeNXjhUjIghV+aA84d2T9A1y3ij13RhROwT1nTYTamw
cnFqIxEvYYN1W0KFoY7Pw7iNWgnGjl2cmgwxoY61IthBl8yvrq6zsAPMwKR5bdUN
kUlvNY3jtayh4i+1yPkBefMLmmNKJajmAN2aBCDRCPbbzCooXl5iJIBJd9iF1E+B
9sbnp1/7xOWcoSkW7dlO7YDsGxt/kjfBL0HN8vkwiRWc7mFaLGc=
=E7Lb
-----END PGP SIGNATURE-----

--5yy6komcrxrjkcng--
