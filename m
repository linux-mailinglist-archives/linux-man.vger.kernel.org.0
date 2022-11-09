Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B40B622EC2
	for <lists+linux-man@lfdr.de>; Wed,  9 Nov 2022 16:08:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231858AbiKIPIH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Nov 2022 10:08:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231786AbiKIPIG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Nov 2022 10:08:06 -0500
X-Greylist: delayed 62 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 09 Nov 2022 07:08:04 PST
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.185])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69D3D1A810
        for <linux-man@vger.kernel.org>; Wed,  9 Nov 2022 07:08:03 -0800 (PST)
X-KPN-MessageId: 080f0f24-6040-11ed-bfe8-005056999439
Received: from smtp.kpnmail.nl (unknown [10.31.155.5])
        by ewsoutbound.so.kpn.org (Halon) with ESMTPS
        id 080f0f24-6040-11ed-bfe8-005056999439;
        Wed, 09 Nov 2022 16:06:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=xs4all.nl; s=xs4all01;
        h=from:to:subject:mime-version:date:message-id:content-type;
        bh=JSsgZRo+DDCN4Kx3N3gve4rQZ+EA9/LXcFRt4szZdHU=;
        b=XcfAg5aOqdutYkFItcwLHCQNW0VjSh//tZPHhdwsrSeyd/VJ4TXWSssLsbfaBabjS4/ZiIPpbMdel
         5pZER8XMQiR1LQRiH5TtVvJtdeil1wLoo5ugwMJNzc/ihzItSNTFQliWjX1f01g28KhbIOD6fDRuqs
         oap9o0MkY1yEQLTgcpjragaoIg9ryxYVO//fHV788vZm4SMjQXORnbqS6Chsqkn74twcfjFLFw+KSt
         elCSxj4IP9cHZYpeafZUmBA4P7itvbpm8nkUJKk0oVBY/dMUmm/a1K3upZYMMie14Js/BwMDxiSrTW
         zjeB/tLdAXKG3jmtHy4nI6eUo6K014Q==
X-KPN-MID: 33|i86RwdoA7SP+qfoMlwlHRXnSdnky2dMBDtVBx/64Sg7h7MYyRE/cbHCUyCFrJpc
 58orH4VPia8HdflaR+UTeaO4UAdRkcl+eU8JbtXcQMTs=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|5ny/Xw1834T+UwCPTu5aPCT4Q1Z2T6csC+m6Vaxe50z/bCFiZr8SWpCD3AhS8lB
 EFC0v9TgbIguMvXuiAaHV7Q==
X-Originating-IP: 77.173.35.122
Received: from [192.168.178.20] (77-173-35-122.fixed.kpn.net [77.173.35.122])
        by smtp.xs4all.nl (Halon) with ESMTPSA
        id 282673bd-6040-11ed-9b31-00505699b758;
        Wed, 09 Nov 2022 16:06:58 +0100 (CET)
Content-Type: multipart/mixed; boundary="------------J537EZ0t9VsXvYIvZ1iwSEnD"
Message-ID: <2d4d8b7b-5890-cd9f-061d-6d259d8ed6ee@xs4all.nl>
Date:   Wed, 9 Nov 2022 16:06:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: Fwd: Simple changes to select(2) and pipe(7) - example program
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Cc:     Ken Brown <kbrown@cornell.edu>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        "Michael T. Kerrisk" <mtk@man7.org>
References: <30847211-efc7-12be-6ce9-c5c4ada16805@xs4all.nl>
 <9f23de64-4748-5176-1caa-f05b9f4d5f0f@gmail.com>
 <0fd276c7-3aab-0075-8a54-1371e4fad925@gmail.com>
From:   "J.H. vd Water" <henri.van.de.water@xs4all.nl>
In-Reply-To: <0fd276c7-3aab-0075-8a54-1371e4fad925@gmail.com>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------J537EZ0t9VsXvYIvZ1iwSEnD
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/9/22 15:15, Alejandro Colomar wrote:
> Hi Henri,

> I've forwarded the emails I got from you to the mailing list, for an
> open discussion.  If I'm missing any, please resend including to the
> list, and preferrably as a reply to this thread.
Oops!

Hi Alex,

Only just now I finished an e-mail, that I intended to send to the list ...

(Sorry, I am that quick anymore)

Regards,
Henri

=====

Subscribe to the list beforehand ...

To: Alejandro Colomar <alx@kernel.org> <==== different e-mail address
To: Michael Kerrisk <mtk.manpages@gmail.com>
Cc: linux-man@vger.kernel.org
Cc: Ken Brown <kbrown@cornell.edu>

Subject Title: [patch] select.2, pipe.7: wfix

L.S.,

As result of a problem report against his implementation of select(2) on Cygwin,
it became clear to Ken Brown (and myself) that both the Linux man pages and LPI,
which is a acronym for the book: Linux Programming Interface by Michael Kerrisk,
are not completely correct in describing the behaviour of select(2).

You can read all about it here:

 - https://cygwin.com/pipermail/cygwin/2022-September/252246.html

   (Re: FIFO issues - response by Ken Brown in which he announces
    the correction of his implementation of select() - in Cygwin)

Basically, select(2) says that the read end of a fifo is "read ready" in case
the write end of the fifo is closed (i.e. select(2) would return in that case,
because read(2) would return in that case).

However, select(2) blocks on the read end of a pipe in case the write end has
never been opened before (different from read(2)) - and only in that case! [1]

[1] select(2) on the read end of a pipe will return in case the write end is
closed, once the write has been opened and closed once.

After studying the Linux man pages (and verification on Fedora 35), I propose
the following modifications:

 1.
man 2 select  ... DESCRIPTION reads:

"select() allows a program to monitor multiple file descriptors, waiting
 until one or more of the file descriptors become "ready" for some class of
 I/O operation (e.g., input possible). A file descriptor is considered
 ready if it is  possible to perform a corresponding I/O operation
 (e.g., read(2), or a sufficiently small write(2)) without blocking."

I suggest to add the following line:

"However, note that select(2) will block on the read end of a pipe/fifo, if
 the write end of the pipe/fifo has never been opened before, unlike read(2)
 (read(2) will always return with zero if the write end of the pipe/fifo is
  closed - see pipe(7) where the text starts with I/O on pipes and fifos).

 2.
man 7 pipe ... where the paragraph start with "I/O on pipes and FIFOs":

"If a process attempts to read from an empty pipe, then read(2) will block
 until data is available."

I suggest to change the above line as follows:

"If a process attempts to read from an empty pipe while the write end is open,
 then read(2) will block (in case the O_NONBLOCK openfile status flag has been
 disabled) until data is available; however, if the write end of the pipe is
 closed and the pipe is empty, then read(2) will return with zero."

-----
Attached to this mail, you will find the files server.c and client.c, which
will hopefully clarify what I am talking about.

Finally, I do realize that this message does not contain an official patch,
but I cannot provide one, as I am not set up to provide one. Several years
ago, I "retired from active duty" (Cygwin, not Linux); git(1) and anything
that is useful (required?) in order to be able to properly "submit a patch
to the list" is currently not present on my system.

Attachments: server.c, client.c

====
--------------J537EZ0t9VsXvYIvZ1iwSEnD
Content-Type: text/x-csrc; charset=UTF-8; name="client.c"
Content-Disposition: attachment; filename="client.c"
Content-Transfer-Encoding: base64

Ly8gZ2NjIC1XYWxsIC1XZXh0cmEgLW8gY2xpZW50IGNsaWVudC5jCgojaW5jbHVkZSA8c3Rk
aW8uaD4KI2luY2x1ZGUgPHVuaXN0ZC5oPgojaW5jbHVkZSA8c3RkbGliLmg+CiNpbmNsdWRl
IDxzdHJpbmcuaD4KI2luY2x1ZGUgPHN5cy9zdGF0Lmg+CiNpbmNsdWRlIDxmY250bC5oPgoj
aW5jbHVkZSA8ZXJybm8uaD4KCiNkZWZpbmUgRklGT19QQVRIICIvdG1wL215ZmlmbyIKCmlu
dAptYWluKGludCBhcmdjLCBjaGFyICphcmd2W10pCnsKICAgIGludCBmZCA9IC0xOwoKICAg
IGZkID0gb3BlbihGSUZPX1BBVEgsIE9fV1JPTkxZKTsKICAgIHByaW50ZigiZmQgPSAlZFxu
IiwgZmQpOwoKICAgIGlmIChmZCA8IDApIHsKICAgICAgICBmcHJpbnRmKHN0ZGVyciwgIkNv
dWxkIG5vdCBvcGVuIGZpZm8gJXM6ICVzXG4iLCBGSUZPX1BBVEgsIHN0cmVycm9yKGVycm5v
KSk7CiAgICAgICAgcmV0dXJuIC0xOwogICAgfQoKICAgIGludCBmbGFncyA9IGZjbnRsKGZk
LCBGX0dFVEZMKTsKICAgIGlmIChmbGFncyA9PSAtMSkKICAgICAgICBmcHJpbnRmKHN0ZGVy
ciwgImZjbnRsIEZfR0VURkw6ICVzXG4iLCBzdHJlcnJvcihlcnJubykpOwogICAgcHJpbnRm
KCJmbGFncyA9IDAlb1xuIiwgZmxhZ3MpOwoKICAgIGlmIChhcmdjID4gMSkgewogICAgICAg
IHdyaXRlKGZkLCBhcmd2WzFdLCBzdHJsZW4oYXJndlsxXSkgKTsKICAgIH0gZWxzZSB7CiAg
ICAgICAgd3JpdGUoZmQsICYiV2hhdCBobyEiLCA5KTsKICAgIH0KICAgIC8vIG5vdGU6IHBy
aW50ZiAiV2hhdCBobyIgPiAvdG1wL215ZmlmbyBmcm9tIGJhc2gsIHdvdWxkIGNsb3NlIHRo
ZSBmaWxlIGRlc2NyaXB0b3IuCgogICAgcHJpbnRmKCJDbG9zaW5nIC4uLiBmZCA9ICVkXG4i
LCBmZCk7CiAgICBjbG9zZShmZCk7IC8vIEVPRgoKICAgIHJldHVybiAwOwp9CgovLz09PT09
Cg==
--------------J537EZ0t9VsXvYIvZ1iwSEnD
Content-Type: text/x-csrc; charset=UTF-8; name="server.c"
Content-Disposition: attachment; filename="server.c"
Content-Transfer-Encoding: base64

Ly8gZ2NjIC1XYWxsIC1XZXh0cmEgLW8gc2VydmVyIHNlcnZlci5jCgojaW5jbHVkZSA8c3Rk
aW8uaD4KI2luY2x1ZGUgPHVuaXN0ZC5oPgojaW5jbHVkZSA8c3RkbGliLmg+CiNpbmNsdWRl
IDxzdHJpbmcuaD4KI2luY2x1ZGUgPHN5cy9zdGF0Lmg+CiNpbmNsdWRlIDxzeXMvc2VsZWN0
Lmg+CiNpbmNsdWRlIDxmY250bC5oPgojaW5jbHVkZSA8ZXJybm8uaD4KCiNkZWZpbmUgRklG
T19QQVRIICIvdG1wL215ZmlmbyIKCmludAptYWluKCkKewogICAgaW50IGZkID0gLTE7CiAg
ICBmZF9zZXQgcmVhZGZkczsKICAgIGludCBuc2VsOwogICAgY2hhciBidWZbODBdID0geyAw
IH07CgogICAgaWYgKHVubGluayAoRklGT19QQVRIKSA8IDAgICYmIGVycm5vICE9IEVOT0VO
VCkgewogICAgICBwZXJyb3IgKCJ1bmxpbmsiKTsKICAgICAgZXhpdCAoMSk7CiAgICB9Cgog
ICAgaWYgKG1rZmlmbyhGSUZPX1BBVEgsIDA2MDApIDwgMCkgewogICAgICAgIGZwcmludGYo
c3RkZXJyLCAiQ291bGQgbm90IGNyZWF0ZSBmaWZvICVzOiAlc1xuIiwgRklGT19QQVRILCBz
dHJlcnJvcihlcnJubykpOwogICAgICAgIHJldHVybiAtMTsKICAgIH0KCiAgICBmZCA9IG9w
ZW4oRklGT19QQVRILCBPX1JET05MWSB8IE9fTk9OQkxPQ0spOyAvLyBvcGVuKCkgZG9lcyBu
b3QgYmxvY2sKICAgIHByaW50ZigiZmQgPSAlZFxuIiwgZmQpOwoKICAgIGlmIChmZCA8IDAp
IHsKICAgICAgICBmcHJpbnRmKHN0ZGVyciwgIkNvdWxkIG5vdCBvcGVuIGZpZm8gJXM6ICVz
XG4iLCBGSUZPX1BBVEgsIHN0cmVycm9yKGVycm5vKSk7CiAgICAgICAgcmV0dXJuIC0xOwog
ICAgfQoKICAgIGlmIChmY250bChmZCwgRl9TRVRGTCwgT19SRE9OTFkpID09IC0xKSAvLyBw
cmFnbWF0aWMKICAgICAgICBmcHJpbnRmKHN0ZGVyciwgImZjbnRsIEZfU0VURkw6ICVzXG4i
LCBzdHJlcnJvcihlcnJubykpOwogICAgaW50IGZsYWdzID0gZmNudGwoZmQsIEZfR0VURkwp
OwogICAgaWYgKGZsYWdzID09IC0xKQogICAgICAgIGZwcmludGYoc3RkZXJyLCAiZmNudGwg
Rl9HRVRGTDogJXNcbiIsIHN0cmVycm9yKGVycm5vKSk7CiAgICBwcmludGYoImZsYWdzID0g
MCVvXG4iLCBmbGFncyk7CgogICAgd2hpbGUoMSkgewogICAgICAgIHByaW50ZigiQ2FsbGlu
ZyBzZWxlY3QoKSAuLi4gIik7CiAgICAgICAgZmZsdXNoKHN0ZG91dCk7CiAgICAgICAgRkRf
WkVSTyAoJnJlYWRmZHMpOwogICAgICAgIEZEX1NFVCAoZmQsICZyZWFkZmRzKTsKCiAgICAg
ICAgLyoKICAgICAgICBEaWZmZXJlbnQgZnJvbSByZWFkKDIpLCBzZWxlY3QoMikgd2lsbCAq
YmxvY2sqIG9uIHRoZSByZWFkIGVuZCBvZiBhIGZpZm8gKG9yCiAgICAgICAgcGlwZSkgaWYg
dGhlIHdyaXRlIGVuZCBoYXMgbmV2ZXIgYmVlbiBvcGVuZWQgYmVmb3JlIChhbmQgb25seSBp
biB0aGF0IGNhc2UpLAogICAgICAgIHdoaWxlIHJlYWQoMikgd2lsbCBhbHdheXMgcmV0dXJu
IHdpdGggemVybyAoaW4gY2FzZSBvZiBhbiBlbXB0eSBwaXBlKSBpZiB0aGUKICAgICAgICB3
cml0ZSBlbmQgaXMgY2xvc2VkLyBoYXMgYmVlbiBjbG9zZWQuCgogICAgICAgIFRoZXJlZm9y
ZSwgY2FsbGluZyBzZWxlY3QoMikgYmVmb3JlIGNhbGxpbmcgcmVhZCgyKSwgd2lsbCBlbmFi
bGUgdXMgdG8gYmxvY2sKICAgICAgICBpZiB0aGUgcGlwZSBoYXMgbmV2ZXIgYmVlbiBvcGVu
ZW5kIGJlZm9yZSAoYWdhaW4sIGFuZCBvbmx5IGluIHRoYXQgY2FzZSkuCiAgICAgICAgKi8K
CiAgICAgICAgbnNlbCA9IHNlbGVjdCAoZmQgKyAxLCAmcmVhZGZkcywgTlVMTCwgTlVMTCwg
TlVMTCk7CiAgICAgICAgLy8gc2VsZWN0KCkgYmxvY2tzIHVudGlsIHRoZSB3cml0ZSBlbmQg
b2YgdGhlIHBpcGUgaGFzIGJlZW4gb3BlbmVkICh3aGlsZSB0aGUKICAgICAgICAvLyB3cml0
ZSBlbmQgaGFzIG5ldmVyIGJlZW4gb3BlbmVkIGJlZm9yZSkgYW5kIGRhdGEgaGFzIGJlZW4g
aW5qZWN0ZWQuCiAgICAgICAgcHJpbnRmICgicmV0dXJuZWQgJWRcbiIsIG5zZWwpOwoKICAg
ICAgICBwcmludGYoIlJlYWRpbmcgLi4uXG4iKTsKCiAgICAgICAgc3NpemVfdCBzdGF0dXMg
PSAwOwogICAgICAgIHdoaWxlICgxKSB7IC8vIGFsbG93IG1lIHRvIHJlc2V0IGVycm5vIGFu
ZCBpbnNwZWN0IHN0YXR1cyAuLi4KZXJybm8gPSAwOwoKICAgICAgICAgICAgLyoKICAgICAg
ICAgICAgIHJlYWQoMikgd2lsbCBibG9jayBvbiB0aGUgcmVhZCBlbmQgb2YgYSBmaWZvIChv
ciBwaXBlKSBpbiBjYXNlIHRoZSB3cml0ZSBlbmQKICAgICAgICAgICAgIG9mIHRoZSBmaWZv
IChvciBwaXBlKSBoYXMgYmVlbiBvcGVuZWQgYW5kIHRoZSBwaXBlIGlzIGVtcHR5LiBbMV0K
ICAgICAgICAgICAgIFsxXSBvbmx5IGlmIHRoZSBPX05PTkJMT0NLIG9wZW4gZmlsZSBzdGF0
dXMgZmxhZyBoYXMgYmVlbiBkaXNhYmxlZC4KICAgICAgICAgICAgICovCgogICAgICAgICAg
ICBzdGF0dXMgPSByZWFkKGZkLCBidWYsIHNpemVvZihidWYpKTsKcHJpbnRmKCJzdGF0dXMg
PSAlbGQsIGVycm5vID0gJWRcbiIsIHN0YXR1cywgZXJybm8pOwoKICAgICAgICAgICAgLy8g
d2lsbCBhcnJpdmUgaGVyZSBvbmx5IGlmIHRoZSB3cml0ZSBlbmQgb2YgZmlmbyBoYXMgYmVl
biBvcGVuZWQgKGJlZm9yZSBpdAogICAgICAgICAgICAvLyB3YXMgY2xvc2VkIGFnYWluKQog
ICAgICAgICAgICBpZiAoc3RhdHVzID09IDApIHsgLy8gdGhlIHdyaXRlIGVuZCBvZiB0aGUg
ZmlmbyBoYXMgYmVlbiBjbG9zZWQgKEVPRikKICAgICAgICAgICAgICAgIGNsb3NlKGZkKTsK
ICAgICAgICAgICAgICAgIGludCBmZDI7CiAgICAgICAgICAgICAgICBpZiAoKGZkMiA9IG9w
ZW4gKEZJRk9fUEFUSCwgT19SRE9OTFkgfCBPX05PTkJMT0NLKSkgPCAwKSB7CiAgICAgICAg
ICAgICAgICAgICAgcGVycm9yICgib3BlbiIpOwogICAgICAgICAgICAgICAgICAgIGV4aXQg
KDEpOwogICAgICAgICAgICAgICAgfQoKICAgICAgICAgICAgICAgIGlmIChmY250bChmZCwg
Rl9TRVRGTCwgT19SRE9OTFkpID09IC0xKSAvLyBwcmFnbWF0aWMKICAgICAgICAgICAgICAg
ICAgICBmcHJpbnRmKHN0ZGVyciwgImZjbnRsIEZfU0VURkw6ICVzXG4iLCBzdHJlcnJvcihl
cnJubykpOwogICAgICAgICAgICAgICAgaW50IGZsYWdzID0gZmNudGwoZmQsIEZfR0VURkwp
OwogICAgICAgICAgICAgICAgaWYgKGZsYWdzID09IC0xKQogICAgICAgICAgICAgICAgICAg
IGZwcmludGYoc3RkZXJyLCAiZmNudGwgRl9HRVRGTDogJXNcbiIsIHN0cmVycm9yKGVycm5v
KSk7CiAgICAgICAgICAgICAgICBwcmludGYoImZsYWdzID0gMCVvXG4iLCBmbGFncyk7Cgog
ICAgICAgICAgICAgICAgLyoKICAgICAgICAgICAgICAgICBhc3NpZ24gdGhlIG5ldyBmaWxl
IGRlc2NyaXB0b3IgdG8gdmFyaWFibGUgZmQ7IG90aGVyd2lzZSBzZWxlY3QoMikgd2lsbAog
ICAgICAgICAgICAgICAgIG5vdCBibG9jayBvbiB0aGUgcmVhZCBlbmQgaW4gY2FzZSB0aGUg
d3JpdGUgZW5kIG9mIHRoZSBmaWZvIChvciBwaXBlKSBpcwogICAgICAgICAgICAgICAgIGNs
b3NlZC4KICAgICAgICAgICAgICAgICAqLwogICAgICAgICAgICAgICAgZmQgPSBmZDI7Cgog
ICAgICAgICAgICAgICAgcHJpbnRmKCJmZCA9ICVkIC0gcmVmcmVzaGVkXG4iLCBmZCk7CiAg
ICAgICAgICAgICAgICBicmVhazsKICAgICAgICAgICAgfQogICAgICAgICAgICBpZiAoc3Rh
dHVzID4gMCkgewogICAgICAgICAgICAgICAgaWYgKHdyaXRlKDEsIGJ1Ziwgc3RhdHVzKSA8
IDApIHsKICAgICAgICAgICAgICAgICAgICBmcHJpbnRmKHN0ZGVyciwgIkVycm9yIHNlbmRp
bmcgbWVzc2FnZTogJyVzJzogJXNcbiIsIGJ1Ziwgc3RyZXJyb3IoZXJybm8pKTsKICAgICAg
ICAgICAgICAgIH0KICAgICAgICAgICAgICAgIGlmIChidWZbc3RhdHVzIC0gMV0gIT0gJ1xu
JykgewogICAgICAgICAgICAgICAgICAgIHdyaXRlKDEsICYiXG4iLCAxKTsKICAgICAgICAg
ICAgICAgIH0KICAgICAgICAgICAgICAgIGlmIChzdHJuY2FzZWNtcChidWYsICJxdWl0Iiwg
NCkgPT0gMCkgewogICAgICAgICAgICAgICAgICAgIGNsb3NlKGZkKTsKICAgICAgICAgICAg
ICAgICAgICByZW1vdmUoRklGT19QQVRIKTsKICAgICAgICAgICAgICAgICAgICBleGl0ICgw
KTsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgIH0KICAgICAgICAgICAgaWYgKHN0
YXR1cyA8IDApIHsKICAgICAgICAgICAgICAgIC8qIEFuIGVycm9yIG9jY3VycmVkLCBiYWls
IG91dCAqLwogICAgICAgICAgICAgICAgY2xvc2UoZmQpOwogICAgICAgICAgICAgICAgcGVy
cm9yKCJyZWFkIik7CiAgICAgICAgICAgICAgICBleGl0ICgxKTsKICAgICAgICAgICAgfQog
ICAgICAgIH0gLy8gZW5kIHdoaWxlKDEpIHJlYWQKCiAgICB9IC8vIGVuZCB3aGlsZSghZG9u
ZSkgc2VsZWN0CgogICAgY2xvc2UoZmQpOwogICAgcmVtb3ZlKEZJRk9fUEFUSCk7CgogICAg
cmV0dXJuIDA7Cn0KCi8vPT09PT0K

--------------J537EZ0t9VsXvYIvZ1iwSEnD--
