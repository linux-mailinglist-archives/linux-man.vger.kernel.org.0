Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF9C4320788
	for <lists+linux-man@lfdr.de>; Sat, 20 Feb 2021 23:49:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229809AbhBTWtd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Feb 2021 17:49:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229804AbhBTWtd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Feb 2021 17:49:33 -0500
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com [IPv6:2607:f8b0:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7118C061574
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 14:48:52 -0800 (PST)
Received: by mail-il1-x12c.google.com with SMTP id g9so7731325ilc.3
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 14:48:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SCRhe/6yjjEmYIY0mJobVEDwLTl1LGqkiIErjV1GmYY=;
        b=uRUTjiKow1k3+wPjCd1930Q8gvGTjNbaiKw/mC6XGvBCsAge36BitJcu0x1Pu2fJj7
         Qqq2KXxZxKEVAmFCfQ59MzQq10DhXGhH9ceaJOY4XzfLrPPv5Xx46xf/a70Eosa9ia3L
         0TgjJin+wOB8pGyJgzNjyWcbKxM8v8VpQGRhyN/GI/3R8NRiUjeyPit+SRE5/zvSuHwr
         1GhRojSdBaoHUkTBlKVRoP6SsVCYlEx1oGWbiBXE3ZXTXh0IHfZzy+xYOEf45u9M+QuQ
         zQP8dT1fOX5u7wN2y5MLsfgLwb/QpHtvAleosmI6H0TV9hyfpVc5jE+rMKKD3CpnlWiC
         0ZBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SCRhe/6yjjEmYIY0mJobVEDwLTl1LGqkiIErjV1GmYY=;
        b=Te9K0bAheFndvtFP4MmqFfPzeNRSPGngyOntFpBuWqJM/6GEC4DLiHOdnMeZHLuXLb
         f5mm3Dmhvw3TwA1HpYSvh1njDj/UR5tBxNLMhEb0uys9UMyofIYLGaTBS0crfVneiYjL
         0WvWWPQRBpub1Ohgx/K9hG5usJkKxdyOMh4MAAs0iQlrNg8cUED7ZK/UCXNHwzwXRtkZ
         M2Z06iBxtEVR+/UIp05KoP6P3ZOoMcf+dd1AshgPk/zoVeoWdDI8geiQyYKeduZL4X9T
         EeEnuzzcqg6Zx7SINohKR+QlxHpVh5jVBqo1UncKXpYGioTOq3Jo3HClwI9t1L2WC4k/
         LGCQ==
X-Gm-Message-State: AOAM533Huvi9+J8e45f9AAyqZPFia1o3X9uqvdJjeyZezbqf1Xv1XbHh
        MghCqR6T4MXujb0Do7B8Pl+BybNTSyJS7STKKro=
X-Google-Smtp-Source: ABdhPJy+gLfGLrxrKLQe0kHgVKiddLmkl388wBIGs2SfhWIMPcImytgreFdoj/ElbhId/DecdDY1oDahWJ8NYDGjDU4=
X-Received: by 2002:a92:512:: with SMTP id q18mr9513736ile.279.1613861332058;
 Sat, 20 Feb 2021 14:48:52 -0800 (PST)
MIME-Version: 1.0
References: <CAKmF0pOMR9OMd4=ikHu31QGCVOWu10vvH4OzzgbUtPGGdbW05Q@mail.gmail.com>
 <CAKgNAkgHu8jMNfqcXjxvwSDP73fzA_2iYTRgucRn=UA1t=QHrg@mail.gmail.com>
In-Reply-To: <CAKgNAkgHu8jMNfqcXjxvwSDP73fzA_2iYTRgucRn=UA1t=QHrg@mail.gmail.com>
From:   Philipp Schuster <phip1611@gmail.com>
Date:   Sat, 20 Feb 2021 23:48:36 +0100
Message-ID: <CAKmF0pMWfH1RzEtQCh6yjDVqhtw8QxwPardoGt9ouheUVm0fkQ@mail.gmail.com>
Subject: Re: Misleading documentation in Netlink(7) man page / doesn't match
 with Kernel
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: multipart/mixed; boundary="0000000000006a2ea905bbcc5fbb"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--0000000000006a2ea905bbcc5fbb
Content-Type: text/plain; charset="UTF-8"

Hi Michael,

> I'm a little unclear. Do you mean that the manual page should include
> the additional comments?


Yes, this is true. It must be clear that Netlink error responses,
i.e. messages with type NLMSG_ERROR (0x2), can be longer than
sizeof(struct nlmsgerr). In certain circumstances the payload can be longer.

I appended a patch. If you need further information or the patch in
a different format, I'm looking forward to solving this with you.

diff --git a/man7/netlink.7 b/man7/netlink.7
index c69bb62bf..c8ca5da28 100644
--- a/man7/netlink.7
+++ b/man7/netlink.7
@@ -189,13 +189,25 @@ message signals an error and the payload contains an
 .I nlmsgerr
 structure,
 .B NLMSG_DONE
-message terminates a multipart message.
+message terminates a multipart message. Error messages get the
+original request appened, unless the user requests to cap the
+error message, and get extra error data if requested.
 .PP
 .in +4n
 .EX
 struct nlmsgerr {
     int error;        /* Negative errno or 0 for acknowledgements */
     struct nlmsghdr msg;  /* Message header that caused the error */
+    /*
+     * followed by the message contents unless NETLINK_CAP_ACK was set
+     * or the ACK indicates success (error == 0).
+     * For example Generic Netlink message with attributes.
+     * message length is aligned with NLMSG_ALIGN()
+     */
+    /*
+     * followed by TLVs defined in enum nlmsgerr_attrs
+     * if NETLINK_EXT_ACK was set
+     */
 };
 .EE
 .in



I also attached the patch as a file.



Am Sa., 20. Feb. 2021 um 21:07 Uhr schrieb Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com>:
>
> Hi Philipp,
>
> On Sat, 20 Feb 2021 at 16:25, Philipp Schuster <phip1611@gmail.com> wrote:
> >
> > To whom it may concern,
> > I'd like to inform you about a bug in the Netlink(7) man page [0].
> >
> > It describes struct nlmsgerr the following way:
> >
> > struct nlmsgerr {
> >        int error;        /* Negative errno or 0 for acknowledgements */
> >        struct nlmsghdr msg;  /* Message header that caused the error */
> > };
> >
> > but according to Kernel code [1] [2] [3] it actually should be:
> >
> > struct nlmsgerr {
> >        int error;        /* Negative errno or 0 for acknowledgements */
> >        struct nlmsghdr msg;  /* Message header that caused the error */
> >        /*
> >         * followed by the message contents unless NETLINK_CAP_ACK was set
> >         * or the ACK indicates success (error == 0)
> >         * message length is aligned with NLMSG_ALIGN()
> >         */
> >        /*
> >         * followed by TLVs defined in enum nlmsgerr_attrs
> >         * if NETLINK_EXT_ACK was set
> >         */
> > };
> >
> > This discrepancy led to errors implementing at least a Rust library which
> > made wrong assumptions about the returned value.
>
> I'm a little unclear. Do you mean that the manual page should include
> the additional comments?
>
> Thanks,
>
> Michael
>
> > [0] https://man7.org/linux/man-pages/man7/netlink.7.html
> > [1] https://elixir.bootlin.com/linux/v5.11/source/include/uapi/linux/netlink.h#L112
> > [2] https://elixir.bootlin.com/linux/v5.11/source/net/netlink/af_netlink.c#L2416
> > [3] https://elixir.bootlin.com/linux/v5.11/source/net/netlink/af_netlink.c#L2440
> >
> >
> > Kind regards
> > --
> > Philipp Schuster
>
>
>
> --
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/



--
Philipp Schuster

--0000000000006a2ea905bbcc5fbb
Content-Type: application/x-patch; name="netlink_7_man_page.patch"
Content-Disposition: attachment; filename="netlink_7_man_page.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kleb8o7f0>
X-Attachment-Id: f_kleb8o7f0

ZGlmZiAtLWdpdCBhL21hbjcvbmV0bGluay43IGIvbWFuNy9uZXRsaW5rLjcKaW5kZXggYzY5YmI2
MmJmLi5jZjAzZTFjNTYgMTAwNjQ0Ci0tLSBhL21hbjcvbmV0bGluay43CisrKyBiL21hbjcvbmV0
bGluay43CkBAIC0xODksMTMgKzE4OSwyNSBAQCBtZXNzYWdlIHNpZ25hbHMgYW4gZXJyb3IgYW5k
IHRoZSBwYXlsb2FkIGNvbnRhaW5zIGFuCiAuSSBubG1zZ2Vycgogc3RydWN0dXJlLAogLkIgTkxN
U0dfRE9ORQotbWVzc2FnZSB0ZXJtaW5hdGVzIGEgbXVsdGlwYXJ0IG1lc3NhZ2UuCittZXNzYWdl
IHRlcm1pbmF0ZXMgYSBtdWx0aXBhcnQgbWVzc2FnZS4gRXJyb3IgbWVzc2FnZXMgZ2V0IHRoZSAK
K29yaWdpbmFsIHJlcXVlc3QgYXBwZW5kZWQsIHVubGVzcyB0aGUgdXNlciByZXF1ZXN0cyB0byBj
YXAgdGhlIAorZXJyb3IgbWVzc2FnZSwgYW5kIGdldCBleHRyYSBlcnJvciBkYXRhIGlmIHJlcXVl
c3RlZC4KIC5QUAogLmluICs0bgogLkVYCiBzdHJ1Y3Qgbmxtc2dlcnIgewogICAgIGludCBlcnJv
cjsgICAgICAgIC8qIE5lZ2F0aXZlIGVycm5vIG9yIDAgZm9yIGFja25vd2xlZGdlbWVudHMgKi8K
ICAgICBzdHJ1Y3Qgbmxtc2doZHIgbXNnOyAgLyogTWVzc2FnZSBoZWFkZXIgdGhhdCBjYXVzZWQg
dGhlIGVycm9yICovCisgICAgLyoKK8KgIMKgIMKgKiBmb2xsb3dlZCBieSB0aGUgbWVzc2FnZSBj
b250ZW50cyB1bmxlc3MgTkVUTElOS19DQVBfQUNLIHdhcyBzZXQKK8KgIMKgIMKgKiBvciB0aGUg
QUNLIGluZGljYXRlcyBzdWNjZXNzIChlcnJvciA9PSAwKS4KKyAgICAgKiBGb3IgZXhhbXBsZSBH
ZW5lcmljIE5ldGxpbmsgbWVzc2FnZSB3aXRoIGF0dHJpYnV0ZXMuCivCoCDCoCDCoCogbWVzc2Fn
ZSBsZW5ndGggaXMgYWxpZ25lZCB3aXRoIE5MTVNHX0FMSUdOKCkKK8KgIMKgIMKgKi8KK8KgICDC
oC8qCivCoCAgwqAgKiBmb2xsb3dlZCBieSBUTFZzIGRlZmluZWQgaW4gZW51bSBubG1zZ2Vycl9h
dHRycworwqAgIMKgICogaWYgTkVUTElOS19FWFRfQUNLIHdhcyBzZXQKK8KgICDCoCAqLwogfTsK
IC5FRQogLmluCg==
--0000000000006a2ea905bbcc5fbb--
