Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7517B633D4F
	for <lists+linux-man@lfdr.de>; Tue, 22 Nov 2022 14:15:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233704AbiKVNPI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Nov 2022 08:15:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233705AbiKVNOn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Nov 2022 08:14:43 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABACE64A24
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 05:13:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1669122817;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=GJuiH/ctGMrhxBr4SAOpII3X4DTOXas09VEeQmwgwy4=;
        b=L2s3TQaT8TnqUVOhMlpiDTuqQkuc8oGruxL8rWfhmCkFt/LXi0dZutoJlfAMjWwlRQr9H5
        PKoTp9oVD5IAKBgStyEbqiBUjnh5ODZwtyMpVsYF1MpobWFVuGH421FTU8qfvoHwgZ/4cB
        PvDTRkmiiiVfErS8KjE6m7WBs6E5ApY=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-324-hEq0ZGSwN1qooMkcFE00MA-1; Tue, 22 Nov 2022 08:13:35 -0500
X-MC-Unique: hEq0ZGSwN1qooMkcFE00MA-1
Received: by mail-ed1-f71.google.com with SMTP id s14-20020a056402520e00b00469a9930c52so3538704edd.16
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 05:13:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GJuiH/ctGMrhxBr4SAOpII3X4DTOXas09VEeQmwgwy4=;
        b=OIQtv4TfTRjFPKVy22vswsPcgymF/P8kE+JmX2uwEzLkyKuwHXyOfAjk0zZG3XMq1q
         VCq59LVTgn59OxUwqmyFYsJVpVmQpD4HCCyp35b46nO4j6ky76+MnMvCBLf9ww+rF4Qk
         GbpEOQnZB4qFry36hRFa+skM5XXIcxQzOfc6Y4mg/E3ClTOD6xe/29gS0qCWu58/Pg0a
         GD0rUR8TtLb4DlMAJ63va4ocLrlJ+mx30zBEInc0cxHfNexw9BDvF4uJPoVIHm52qp+w
         PdAn1lM9HbL53MYgMEyn8806N4mLnbx02KnJWEXIh5HpLXP5RLHAI3kj/VVOQzXMdaIy
         4A0Q==
X-Gm-Message-State: ANoB5pklqgbWR/Lj7Aj28l2duhm0ywx9f2aF1Fyk5p5wqkIUwPqLSXV7
        rClF/sKeuLnjp15VOg1qwoaij90dObEBjCCWSeapKsjNNUHRzGMegjZMcoULb5VX/Qn/fVCGQed
        bSj9xEddUA5bkCK+pQAAR5Fy7fG3w4KHeyfsJ
X-Received: by 2002:a17:906:90cd:b0:7b8:d22f:dc0f with SMTP id v13-20020a17090690cd00b007b8d22fdc0fmr1618237ejw.289.1669122814789;
        Tue, 22 Nov 2022 05:13:34 -0800 (PST)
X-Google-Smtp-Source: AA0mqf56HslxM2EAlK5ohNConCyUHSBe8cv+QKYKMXpoLkgge89nWNSSVbYXLeRXq7Kl8w5Ihp3bXlKNssIv+gRUyHM=
X-Received: by 2002:a17:906:90cd:b0:7b8:d22f:dc0f with SMTP id
 v13-20020a17090690cd00b007b8d22fdc0fmr1618220ejw.289.1669122814548; Tue, 22
 Nov 2022 05:13:34 -0800 (PST)
MIME-Version: 1.0
References: <CACb0b4=Qs4oQ6LWxOveU2cc=eNzrqT7dg=cQsg41vGF84=9LiA@mail.gmail.com>
 <CACb0b4nsGQzyQ+rQf_SMMdyN1R3WSsc6grfgGUhT+fjgM2QFOg@mail.gmail.com>
In-Reply-To: <CACb0b4nsGQzyQ+rQf_SMMdyN1R3WSsc6grfgGUhT+fjgM2QFOg@mail.gmail.com>
From:   Jonathan Wakely <jwakely@redhat.com>
Date:   Tue, 22 Nov 2022 13:13:23 +0000
Message-ID: <CACb0b4=LO+jcwwrirp3iVdu2k0Y8H0PEWwdzs+Jch+D4gJxiog@mail.gmail.com>
Subject: Re: Garbled text in zic(8) man page
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Content-Type: multipart/mixed; boundary="00000000000072ee0305ee0ef0ab"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--00000000000072ee0305ee0ef0ab
Content-Type: text/plain; charset="UTF-8"

On Tue, 22 Nov 2022 at 13:00, Jonathan Wakely wrote:
>
> On Tue, 22 Nov 2022 at 12:58, Jonathan Wakely wrote:
> >
> > Hi,
> >
> > The description of the RULES field of a Zone line at:
> > https://man7.org/linux/man-pages/man8/zic.8.html#FILES
> > seems garbled:
> > "giving of the amount of time to be added to local standard time effect"
> >
> > It looks like it might be a copy&paste error from the similar text for
> > the SAVE field of a Rule line. I think the first "of" and the "effect"
> > should be removed, but I'm not sure if that's correct.
>
> This was introduced by
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man8/zic.8?id=5355e20f816e1e0af93d6bb80439e86f2d1c7be7
> so maybe it should be reported to tzdb upstream instead.

It's already fixed upstream. The version in the tzdb-2022f package says:

       RULES The name of the rules that apply in the timezone or,
             alternatively, a field in the same format as a rule-line SAVE
             column, giving the amount of time to be added to local standard
             time and whether the resulting time is standard or daylight
             saving.  If this field is - then standard time always applies.
             When an amount of time is given, only the sum of standard time
             and this amount matters.

So here's a patch for the man page. There are lots of other changes in
the upstream page though, so another sync might be useful.

--00000000000072ee0305ee0ef0ab
Content-Type: text/plain; charset="US-ASCII"; name="zic-8-man-page.txt"
Content-Disposition: attachment; filename="zic-8-man-page.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_las8m0q40>
X-Attachment-Id: f_las8m0q40

Y29tbWl0IDFjOWE0ZDliZDI0MGRmZTJhYWVmMzk2YjVlYjA3ODhlZWFiZjM3OTEKQXV0aG9yOiBK
b25hdGhhbiBXYWtlbHkgPGp3YWtlbHlAcmVkaGF0LmNvbT4KRGF0ZTogICBUdWUgTm92IDIyIDEz
OjEwOjU1IDIwMjIgKzAwMDAKCiAgICB6aWMuODogRml4IGdhcmJsZWQgc2VudGVuY2UKICAgIAog
ICAgVGhpcyBjb3JyZWN0ZWQgdGV4dCBub3cgbWF0Y2hlcyB0aGUgY29ycmVzcG9uZGluZyBzZWN0
aW9uIG9mIHRoZQogICAgdXBzdHJlYW0gbWFuIHBhZ2UuCiAgICAKICAgIFNpZ25lZC1vZmYtYnk6
IEpvbmF0aGFuIFdha2VseSA8andha2VseUByZWRoYXQuY29tPgoKZGlmZiAtLWdpdCBhL21hbjgv
emljLjggYi9tYW44L3ppYy44CmluZGV4IDc5YjA2YWU3Yy4uZDYzM2NlN2JiIDEwMDY0NAotLS0g
YS9tYW44L3ppYy44CisrKyBiL21hbjgvemljLjgKQEAgLTUwMiw4ICs1MDIsOCBAQCBiZWdpbiB0
aGUgZmllbGQgd2l0aCBhIG1pbnVzIHNpZ24gaWYgdGltZSBtdXN0IGJlIHN1YnRyYWN0ZWQgZnJv
bSBVVC4KIC5CIFJVTEVTCiBUaGUgbmFtZSBvZiB0aGUgcnVsZXMgdGhhdCBhcHBseSBpbiB0aGUg
dGltZXpvbmUgb3IsCiBhbHRlcm5hdGl2ZWx5LCBhIGZpZWxkIGluIHRoZSBzYW1lIGZvcm1hdCBh
cyBhIHJ1bGUtbGluZSBTQVZFIGNvbHVtbiwKLWdpdmluZyBvZiB0aGUgYW1vdW50IG9mIHRpbWUg
dG8gYmUgYWRkZWQgdG8gbG9jYWwgc3RhbmRhcmQgdGltZQotZWZmZWN0LCBhbmQgd2hldGhlciB0
aGUgcmVzdWx0aW5nIHRpbWUgaXMgc3RhbmRhcmQgb3IgZGF5bGlnaHQgc2F2aW5nLgorZ2l2aW5n
IHRoZSBhbW91bnQgb2YgdGltZSB0byBiZSBhZGRlZCB0byBsb2NhbCBzdGFuZGFyZCB0aW1lCith
bmQgd2hldGhlciB0aGUgcmVzdWx0aW5nIHRpbWUgaXMgc3RhbmRhcmQgb3IgZGF5bGlnaHQgc2F2
aW5nLgogSWYgdGhpcyBmaWVsZCBpcwogLkIgXCotCiB0aGVuIHN0YW5kYXJkIHRpbWUgYWx3YXlz
IGFwcGxpZXMuCg==
--00000000000072ee0305ee0ef0ab--

