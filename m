Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2DA92F05E9
	for <lists+linux-man@lfdr.de>; Sun, 10 Jan 2021 09:17:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725907AbhAJIRY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 10 Jan 2021 03:17:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725820AbhAJIRX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 10 Jan 2021 03:17:23 -0500
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23943C061786
        for <linux-man@vger.kernel.org>; Sun, 10 Jan 2021 00:16:43 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id b2so15629801edm.3
        for <linux-man@vger.kernel.org>; Sun, 10 Jan 2021 00:16:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=sStPmB96AZCfkWNj0dX/GKYx8ouS+xXWMByw/Z54i/A=;
        b=Z35f26xJpG4oOxhWHwXshVIQSSM378fBbYwMoLdjGW/mwNHVLIxBIX6svG1xFq18Mr
         DzyA6aGMfmMFZ4KGWJARFfYbNo/BhQeW5fHa4Ww2eUkirGMSg7ZhD1D3TdmGQj3w/ifo
         px/kaZWT50otjLdMRhdGHmPscdBUibq5g1TuFQpa2B7VBQnXeQyS05VzP6ySodHay3tX
         JsFw+tO/Fb4WvbWWJj5pizOm4wezKVGIM6jSVA0jG6acKK+YPsmCwqrgXeuk9buJJdwF
         E6Zn7Xh1hco8QGFC9o4Hgd9ehjDyWleD6vt173I9t670WfF5RyV/6a0WSxAkT9HUWCUx
         FZ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=sStPmB96AZCfkWNj0dX/GKYx8ouS+xXWMByw/Z54i/A=;
        b=X+lG98yjM//qJN0TJpb/LYNtZL2GmcQpq2AUyIKRkTjQmjOolwvOeoJtzSlbm5FjRk
         h6ntNt3S7hqTGXkXHNqxuGdKO8pl0d45itvKt1ajgIWZgBNf1EFM08otd+UvF65lYQ9a
         5DhLlmGPP7DRHAhfecapWnWcVfxzp7KohrLb51sixic1We+y+fqKhvDvH/TChAl/EENo
         q03w4QGAR/ARdRXT1EfvCfjP8yZZ9/YB1qRw9y1cXBZSafqwcBM6almegWyIkx4hwVTn
         CCg0Q3YKKBDd+CM6+brquV5KNsrcJ2/oapMw5u7hD/CCAMJMkoix3ix0aA/ZVoZyG0Ae
         oQog==
X-Gm-Message-State: AOAM532t/NEbftqUGchLe/Kn7uHdA+kwwnCb4YHo/chMhfnvHB5g1m75
        aQK6umeG7uCQrUnQkK1FENs0sxc2D88=
X-Google-Smtp-Source: ABdhPJxT7/CudmD8rFNLrDlFlh+/x65wbW/BN36RPROg93JEzGmn6oqVlhbZEalsYhvjNjhVqOjViQ==
X-Received: by 2002:a05:6402:19b0:: with SMTP id o16mr10677716edz.270.1610266599402;
        Sun, 10 Jan 2021 00:16:39 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id dx7sm5487341ejb.120.2021.01.10.00.16.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Jan 2021 00:16:38 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] Various pages: srcfix: Remove redundant .PP
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210109214501.76960-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <21c26d7e-c2c9-f19a-e030-819658201f2a@gmail.com>
Date:   Sun, 10 Jan 2021 09:16:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210109214501.76960-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 1/9/21 10:45 PM, Alejandro Colomar wrote:
> .PP are redundant just after .SH or .SS.
> Remove them.
> 
> $ find man? -type f \
>   |xargs sed -i '/^\.S[HS]/{n;/\.PP/d}';
> 
> Plus a couple manual edits.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Oops -- we partly worked on the same thing at the same time, and 
I pushed a change that breaks this patch. I reverted my patch,
and applied your (better) patch.

Thanks,

Michael

> ---
>  man3/stailq.3          | 2 +-
>  man3/tailq.3           | 2 +-
>  man4/lirc.4            | 9 ---------
>  man4/st.4              | 3 ---
>  man5/utmp.5            | 2 --
>  man7/boot.7            | 2 --
>  man7/credentials.7     | 1 -
>  man7/futex.7           | 4 ----
>  man7/mailaddr.7        | 3 ---
>  man7/sigevent.7        | 1 -
>  man7/time_namespaces.7 | 2 --
>  man7/uri.7             | 5 -----
>  12 files changed, 2 insertions(+), 34 deletions(-)
> 
> diff --git a/man3/stailq.3 b/man3/stailq.3
> index e68cd25b2..8514b3998 100644
> --- a/man3/stailq.3
> +++ b/man3/stailq.3
> @@ -256,13 +256,13 @@ macro.
>  .\" .BR STAILQ_REMOVE (),
>  .\" this macro does not traverse the entire tail queue.
>  .SS Other features
> -.PP
>  .BR STAILQ_CONCAT ()
>  concatenates the tail queue headed by
>  .I head2
>  onto the end of the one headed by
>  .I head1
>  removing all entries from the former.
> +.\" .PP
>  .\" .BR STAILQ_SWAP ()
>  .\" swaps the contents of
>  .\" .I head1
> diff --git a/man3/tailq.3 b/man3/tailq.3
> index 00fef1ce4..75ab7e1cf 100644
> --- a/man3/tailq.3
> +++ b/man3/tailq.3
> @@ -306,12 +306,12 @@ removes the element
>  .I elm
>  from the queue.
>  .SS Other features
> -.\" .PP
>  .\" .BR TAILQ_SWAP ()
>  .\" swaps the contents of
>  .\" .I head1
>  .\" and
>  .\" .IR head2 .
> +.\" .PP
>  .BR TAILQ_CONCAT ()
>  concatenates the queue headed by
>  .I head2
> diff --git a/man4/lirc.4 b/man4/lirc.4
> index 999cdc571..8bc8a95cf 100644
> --- a/man4/lirc.4
> +++ b/man4/lirc.4
> @@ -25,7 +25,6 @@
>  .SH NAME
>  lirc \- lirc devices
>  .SH DESCRIPTION
> -.PP
>  The
>  .I /dev/lirc*
>  character devices provide a low-level
> @@ -65,7 +64,6 @@ receiving and sending is supported, and in which modes, amongst other
>  features.
>  .\"
>  .SS Reading input with the LIRC_MODE_MODE2 mode
> -.PP
>  In the \fBLIRC_MODE_MODE2 mode\fR, the data returned by
>  .BR read (2)
>  provides 32-bit values representing a space or a pulse duration.
> @@ -90,7 +88,6 @@ The package reflects a timeout; see the
>  ioctl.
>  .\"
>  .SS Reading input with the LIRC_MODE_SCANCODE mode
> -.PP
>  In the \fBLIRC_MODE_SCANCODE\fR
>  mode, the data returned by
>  .BR read (2)
> @@ -100,7 +97,6 @@ is stored in \fIrc_proto\fR.
>  This field has one the values of the \fIenum rc_proto\fR.
>  .\"
>  .SS Writing output with the LIRC_MODE_PULSE mode
> -.PP
>  The data written to the character device using
>  .BR write (2)
>  is a pulse/space sequence of integer values.
> @@ -116,7 +112,6 @@ If more data is provided than the hardware can send, the
>  call fails with the error
>  .BR EINVAL .
>  .SS Writing output with the LIRC_MODE_SCANCODE mode
> -.PP
>  The data written to the character devices must be a single struct
>  \fIlirc_scancode\fR.
>  The \fIscancode\fR and \fIrc_proto\fR fields must
> @@ -127,7 +122,6 @@ The protocol or scancode is invalid, or the
>  .B lirc
>  device cannot transmit.
>  .SH IOCTL COMMANDS
> -.PP
>  The LIRC device's ioctl definition is bound by the ioctl function
>  definition of
>  .IR "struct file_operations" ,
> @@ -153,7 +147,6 @@ referred to below as
>  .IR val .
>  .\"
>  .SS Always Supported Commands
> -.PP
>  \fI/dev/lirc*\fR devices always support the following commands:
>  .TP 4
>  .BR LIRC_GET_FEATURES " (\fIvoid\fP)"
> @@ -166,7 +159,6 @@ it is safe to assume it is not a
>  device.
>  .\"
>  .SS Optional Commands
> -.PP
>  Some
>  .B lirc
>  devices support the commands listed below.
> @@ -363,7 +355,6 @@ Trying to disable a wide band receiver while carrier reports are active
>  will do nothing.
>  .\"
>  .SH FEATURES
> -.PP
>  the
>  .BR LIRC_GET_FEATURES
>  ioctl returns a bit mask describing features of the driver.
> diff --git a/man4/st.4 b/man4/st.4
> index 1d1f0fab8..e300eb45c 100644
> --- a/man4/st.4
> +++ b/man4/st.4
> @@ -238,7 +238,6 @@ driver.
>  The definitions below are from
>  .IR /usr/include/linux/mtio.h :
>  .SS MTIOCTOP \(em perform a tape operation
> -.PP
>  This request takes an argument of type
>  .IR "(struct mtop\ *)" .
>  Not all drives support all operations.
> @@ -686,7 +685,6 @@ the cleaning request.
>  If the pattern is nonzero, the pattern must match
>  the masked sense data byte.
>  .SS MTIOCGET \(em get status
> -.PP
>  This request takes an argument of type
>  .IR "(struct mtget\ *)" .
>  .PP
> @@ -815,7 +813,6 @@ This value is set to \-1 when the block number is unknown (e.g., after
>  or
>  .BR MTSEEK ).
>  .SS MTIOCPOS \(em get tape position
> -.PP
>  This request takes an argument of type
>  .I "(struct mtpos\ *)"
>  and reports the drive's notion of the current tape block number,
> diff --git a/man5/utmp.5 b/man5/utmp.5
> index c77c34488..24b0cba7f 100644
> --- a/man5/utmp.5
> +++ b/man5/utmp.5
> @@ -237,7 +237,6 @@ removed, record-keeping is turned off.
>  .br
>  .I /var/log/wtmp
>  .SH CONFORMING TO
> -.PP
>  POSIX.1 does not specify a
>  .I utmp
>  structure, but rather one named
> @@ -289,7 +288,6 @@ Linux uses the BSD conventions for line contents, as documented above.
>  .\" informative messages such as \fB"new time"\fP in the line field.
>  System V has no \fIut_host\fP or \fIut_addr_v6\fP fields.
>  .SH NOTES
> -.PP
>  Unlike various other
>  systems, where utmp logging can be disabled by removing the file, utmp
>  must always exist on Linux.
> diff --git a/man7/boot.7 b/man7/boot.7
> index cb861932c..25d7b6a7c 100644
> --- a/man7/boot.7
> +++ b/man7/boot.7
> @@ -16,7 +16,6 @@
>  .SH NAME
>  boot \- System bootup process based on UNIX System V Release 4
>  .SH DESCRIPTION
> -.PP
>  The \fBbootup process\fR (or "\fBboot sequence\fR") varies in details
>  among systems, but can be roughly divided into phases controlled by
>  the following components:
> @@ -215,7 +214,6 @@ A boot script in \fI/etc/init.d\fR reads and includes its configuration
>  file (that is, it "\fBsources\fR" its configuration file) and then uses
>  the variable values.
>  .SH FILES
> -.PP
>  .IR /etc/init.d/ ,
>  .IR /etc/rc[S0\-6].d/ ,
>  .I /etc/sysconfig/
> diff --git a/man7/credentials.7 b/man7/credentials.7
> index 2d966a15c..f2acf4cfc 100644
> --- a/man7/credentials.7
> +++ b/man7/credentials.7
> @@ -284,7 +284,6 @@ that the process may create (see
>  .BR inotify (7)).
>  .\"
>  .SS Modifying process user and group IDs
> -.PP
>  Subject to rules described in the relevant manual pages,
>  a process can use the following APIs to modify its user and group IDs:
>  .TP
> diff --git a/man7/futex.7 b/man7/futex.7
> index f59725b61..155c49440 100644
> --- a/man7/futex.7
> +++ b/man7/futex.7
> @@ -16,7 +16,6 @@ futex \- fast user-space locking
>  .B #include <linux/futex.h>
>  .fi
>  .SH DESCRIPTION
> -.PP
>  The Linux kernel provides futexes ("Fast user-space mutexes")
>  as a building block for fast user-space
>  locking and semaphores.
> @@ -49,7 +48,6 @@ Processes can share this integer using
>  via shared memory segments, or because they share memory space,
>  in which case the application is commonly called multithreaded.
>  .SS Semantics
> -.PP
>  Any futex operation starts in user space,
>  but it may be necessary to communicate with the kernel using the
>  .BR futex (2)
> @@ -90,12 +88,10 @@ for
>  more details.
>  The same holds for asynchronous futex waiting.
>  .SH VERSIONS
> -.PP
>  Initial futex support was merged in Linux 2.5.7
>  but with different semantics from those described above.
>  Current semantics are available from Linux 2.5.40 onward.
>  .SH NOTES
> -.PP
>  To reiterate, bare futexes are not intended as an easy-to-use
>  abstraction for end users.
>  Implementors are expected to be assembly literate and to have read
> diff --git a/man7/mailaddr.7 b/man7/mailaddr.7
> index 25502e35d..94eeb6eb0 100644
> --- a/man7/mailaddr.7
> +++ b/man7/mailaddr.7
> @@ -77,7 +77,6 @@ The name may have to be quoted using "", for example, if it contains ".":
>  .PP
>  	"John Q. Doe" <john.doe@monet.example.com>
>  .SS Abbreviation
> -.PP
>  Some mail systems let users abbreviate the domain name.
>  For instance,
>  users at example.com may get away with "john.doe@monet" to
> @@ -85,7 +84,6 @@ send mail to John Doe.
>  .I "This behavior is deprecated."
>  Sometimes it works, but you should not depend on it.
>  .SS Route-addrs
> -.PP
>  In the past, sometimes one had to route a message through
>  several hosts to get it to its final destination.
>  Addresses which show these relays are termed "route-addrs".
> @@ -102,7 +100,6 @@ They occur sometimes in old mail archives.
>  It is generally possible to ignore all but the "user@hostc"
>  part of the address to determine the actual address.
>  .SS Postmaster
> -.PP
>  Every site is required to have a user or user alias designated
>  "postmaster" to which problems with the mail system may be
>  addressed.
> diff --git a/man7/sigevent.7 b/man7/sigevent.7
> index f95c1da71..87736be65 100644
> --- a/man7/sigevent.7
> +++ b/man7/sigevent.7
> @@ -52,7 +52,6 @@ struct sigevent {
>  };
>  .fi
>  .SH DESCRIPTION
> -.PP
>  The
>  .I sigevent
>  structure is used by various APIs
> diff --git a/man7/time_namespaces.7 b/man7/time_namespaces.7
> index 3291ba006..d4f3a9d5f 100644
> --- a/man7/time_namespaces.7
> +++ b/man7/time_namespaces.7
> @@ -185,7 +185,6 @@ the contents of the
>  .I timens_offsets
>  file are inherited from the time namespace of the creating process.
>  .SH NOTES
> -.PP
>  Use of time namespaces requires a kernel that is configured with the
>  .B CONFIG_TIME_NS
>  option.
> @@ -211,7 +210,6 @@ The motivation for adding time namespaces was to allow
>  the monotonic and boot-time clocks to maintain consistent values
>  during container migration and checkpoint/restore.
>  .SH EXAMPLES
> -.PP
>  The following shell session demonstrates the operation of time namespaces.
>  We begin by displaying the inode number of the time namespace
>  of a shell in the initial time namespace:
> diff --git a/man7/uri.7 b/man7/uri.7
> index 97c4f9cb7..facd435cc 100644
> --- a/man7/uri.7
> +++ b/man7/uri.7
> @@ -69,7 +69,6 @@ absolute_path = "/"  path_segments
>  relative_path = relative_segment [ absolute_path ]
>  .fi
>  .SH DESCRIPTION
> -.PP
>  A Uniform Resource Identifier (URI) is a short string of characters
>  identifying an abstract or physical resource (for example, a web page).
>  A Uniform Resource Locator (URL) is a URI
> @@ -487,7 +486,6 @@ URNs are to be supported by the urn: scheme, with a hierarchical name space
>  URNs are not widely implemented.
>  Not all tools support all schemes.
>  .SS Character encoding
> -.PP
>  URIs use a limited number of characters so that they can be
>  typed in and used in a variety of situations.
>  .PP
> @@ -582,7 +580,6 @@ permitted, and can be used only when there is no defined base
>  Don't use abbreviated URIs as hypertext links inside a document;
>  use the standard format as described here.
>  .SH CONFORMING TO
> -.PP
>  .UR http://www.ietf.org\:/rfc\:/rfc2396.txt
>  (IETF RFC\ 2396)
>  .UE ,
> @@ -628,7 +625,6 @@ will converge to common URI formats, and a future
>  version of this man page will describe the converged result.
>  Efforts to aid this convergence are encouraged.
>  .SS Security
> -.PP
>  A URI does not in itself pose a security threat.
>  There is no general guarantee that a URL, which at one time
>  located a given resource, will continue to do so.
> @@ -671,7 +667,6 @@ In particular, the use of a password within
>  the "userinfo" component of a URI is strongly recommended against except
>  in those rare cases where the "password" parameter is intended to be public.
>  .SH BUGS
> -.PP
>  Documentation may be placed in a variety of locations, so there
>  currently isn't a good URI scheme for general online documentation
>  in arbitrary formats.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
