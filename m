Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3E616B148E
	for <lists+linux-man@lfdr.de>; Wed,  8 Mar 2023 22:55:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230128AbjCHVzC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Mar 2023 16:55:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230288AbjCHVy4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Mar 2023 16:54:56 -0500
Received: from zimbra.cs.ucla.edu (zimbra.cs.ucla.edu [131.179.128.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29D69CC31D
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 13:54:48 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id E4297160037;
        Wed,  8 Mar 2023 13:54:47 -0800 (PST)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id DvY6makPxQnF; Wed,  8 Mar 2023 13:54:46 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 3361A16005E;
        Wed,  8 Mar 2023 13:54:46 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.9.2 zimbra.cs.ucla.edu 3361A16005E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=78364E5A-2AF3-11ED-87FA-8298ECA2D365; t=1678312486;
        bh=k93uln5F8K1w63q7E94oh34yud47rRTYmwwrQCgeeZk=;
        h=Content-Type:Message-ID:Date:MIME-Version:Subject:To:From;
        b=bV/fIFx14n0nFGzZW3BqNBm2iVTjvMDbR823jgJI/tMicjJOr023OmuvB15Bfd3t2
         osCNpVQqdL7SJ/nLDnDIDL3C9SiPyYy0HXZwSkrej7Tfp4dWL3lnneq8VYL4/TdwoC
         foozJG8eY+kNHtBXp6Fbex8xH83h4bj2oIlVndNU=
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id yLbgxJLWw5Ir; Wed,  8 Mar 2023 13:54:46 -0800 (PST)
Received: from [131.179.64.200] (Penguin.CS.UCLA.EDU [131.179.64.200])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id 0FAB2160037;
        Wed,  8 Mar 2023 13:54:46 -0800 (PST)
Content-Type: multipart/mixed; boundary="------------v3UQ6W4ZhtGgaDQX50pD33eb"
Message-ID: <66ef5b92-6e19-8bea-2840-6c2f0240d225@cs.ucla.edu>
Date:   Wed, 8 Mar 2023 13:54:45 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: mandoc(1) warning in tzfile(5) regarding //
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <884cb5d0-27ce-a5ca-b449-972021e62e92@gmail.com>
 <7c3294cf-e3d0-c716-d1c0-5b6c5c757d7e@cs.ucla.edu>
 <7eb92df5-6c87-8384-c4a8-2a00eabf1c8e@gmail.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <7eb92df5-6c87-8384-c4a8-2a00eabf1c8e@gmail.com>
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------v3UQ6W4ZhtGgaDQX50pD33eb
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/8/23 11:44, Alejandro Colomar wrote:

> Would you mind sending your patches inline, if it's not much
> cumbersome to you?

Sure, today I resent that other patch inline.


> I still see the warning.

Oh well. Looks like a mandoc bug; maybe it can't tell that we're in a 
macro so '\\' is OK, indeed expected.


> I guess you referred to the TH line in the tzselect.8 page, which
> doesn't show a date, has the project and (unreleased) version in
> the 4th field, and has no 5th field.

Yes.


>> -.TH tzfile 5 2022-09-09 Linux "Linux Programmer's Manual"
>> +.TH tzfile 5 2023-03-07 Linux "Linux Programmer's Manual"
> 
> I don't like this TH line

That's the Linux man page's .TH line not the tzdb .TH line. I merely 
used the format that was already there. The tzdb .TH line is merely ".TH 
TZFILE 5". So you can edit the man-pages .TZ line any way you like.

Come to think of it, the tzdb man pages aren't systematic about .TH line 
capitalization. Some use uppercase (the style in 7th Edition Unix), some 
lowercase (more common in recent decades). Let's go with lowercase. 
Proposed tzdb patch attached, and installed in the development 
repository.  If mandoc complains about this, that's mandoc's problem not 
ours.


>     Would you mind specifying your own project and version upstream
>     so I could keep them untouched?

I can see problems with that. First, it's tzdb commit 
12b48faf10c265ee3ea1aad8cdb5c8239eea65a0 and I doubt whether man page 
readers want to see that. We do have a mechanism for converting that 
commit ID to the quasi version number "2022g-64-g12b48fa" but this quasi 
version number depends on development history not merely on current 
state, so it has its own issues.


Second, non-Linux installations of man pages could see bad output with a 
.TH line like this:

.TH tzfile 5 "tzdb commit 12b48faf10c265ee3ea1aad8cdb5c8239eea65a0" 
"Time Zone Database"

On Solaris 10, "nroff -man tzfile.5" generates the following footer line 
for that:

   Last change: tzdb commit 12b48faf10c265ee3ea1aad8cdb5c8239eea65a1

This ends in "a1" not the correct "a0", and the "Time Zone Database" has 
vanished. On Fedora 37 and macOS the footer line isn't much better:

   Time Zone Dattzdbecommit 12b48faf10c265ee3ea1aad8cdb5c8239eea65a0 
tzfile(5)

Nor does it look good on AIX 7.1:

    Time Zone Database (tzdb commit 12b48faf10c265ee3ea1aad8cdb5tzfile(5)



Third, Git doesn't automatically put version numbers into working files, 
like SCCS does. So it'll be a pain to generate those numbers 
automatically, with our current approach of committing the man page 
files directly into the repository. As you suggest, we'd have to rename 
the man page files to something else in the repository, and have 'make' 
(or some script) generate the version number.

Although some (perhaps all) of this is doable, it'd take some time to 
implement and it'd probably affect downstream users who currently fetch 
the man pages directly from the repository, so it wouldn't be as simple 
as the attached patch.


> I'd also like if you specified the last-modified date when you
> make a release,

Also doable, but as we don't do that now even for programs like 'zdump' 
it'd be an even bigger lift.


>>   .TH tzselect 8 (date) "Linux man-pages (unreleased)"
> 
> And don't really like this one either, since it looks like
> the Linux man-pages is the upstream of the page, and it's not.
> I probably changed this also by accident in some scripted patch.
> I realized and avoided it for tzfile.5, but forgot about this
> one :/.

That's the man-pages .TZ line, not the upstream one, so please feel free 
to modify it any way you like.

Another way the files differ is in the lack of 
"%%%LICENSE_START(PUBLIC_DOMAIN)" and "%%%LICENSE_END" boilerplate 
upstream. I've been reluctant to do that upstream since I expect each 
downstream user has its own format for comments regarding licensing, 
SBOM, SSDF, SCA, and so forth (and if you don't know what those acronyms 
mean then I envy you :-).
--------------v3UQ6W4ZhtGgaDQX50pD33eb
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-Use-lowercase-.TH-titles.patch"
Content-Disposition: attachment;
 filename="0001-Use-lowercase-.TH-titles.patch"
Content-Transfer-Encoding: base64

RnJvbSAzOTNhZDAzNWRjMjBjMTRlNDNmZjMzNDM1NTUyMjkwYjBkYjViNWU4IE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBQYXVsIEVnZ2VydCA8ZWdnZXJ0QGNzLnVjbGEuZWR1
PgpEYXRlOiBXZWQsIDggTWFyIDIwMjMgMTM6MTQ6NTcgLTA4MDAKU3ViamVjdDogW1BST1BP
U0VEXSBVc2UgbG93ZXJjYXNlIC5USCB0aXRsZXMKCi0tLQogbmV3Y3RpbWUuMyAgICB8IDIg
Ky0KIG5ld3N0cmZ0aW1lLjMgfCAyICstCiBuZXd0enNldC4zICAgIHwgMiArLQogdHpmaWxl
LjUgICAgICB8IDIgKy0KIHR6c2VsZWN0LjggICAgfCAyICstCiA1IGZpbGVzIGNoYW5nZWQs
IDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9uZXdjdGlt
ZS4zIGIvbmV3Y3RpbWUuMwppbmRleCAwODYwMTUxLi43MGQ4ZTU0IDEwMDY0NAotLS0gYS9u
ZXdjdGltZS4zCisrKyBiL25ld2N0aW1lLjMKQEAgLTEsNiArMSw2IEBACiAuXCIgVGhpcyBm
aWxlIGlzIGluIHRoZSBwdWJsaWMgZG9tYWluLCBzbyBjbGFyaWZpZWQgYXMgb2YKIC5cIiAy
MDA5LTA1LTE3IGJ5IEFydGh1ciBEYXZpZCBPbHNvbi4KLS5USCBORVdDVElNRSAzCisuVEgg
bmV3Y3RpbWUgMwogLlNIIE5BTUUKIGFzY3RpbWUsIGN0aW1lLCBkaWZmdGltZSwgZ210aW1l
LCBsb2NhbHRpbWUsIG1rdGltZSBcLSBjb252ZXJ0IGRhdGUgYW5kIHRpbWUKIC5TSCBTWU5P
UFNJUwpkaWZmIC0tZ2l0IGEvbmV3c3RyZnRpbWUuMyBiL25ld3N0cmZ0aW1lLjMKaW5kZXgg
ZDVkOGVlMS4uNzVkODhjOCAxMDA2NDQKLS0tIGEvbmV3c3RyZnRpbWUuMworKysgYi9uZXdz
dHJmdGltZS4zCkBAIC0zNSw3ICszNSw3IEBACiAuXCIgICAgIGZyb206IEAoIylzdHJmdGlt
ZS4zCTUuMTIgKEJlcmtlbGV5KSA2LzI5LzkxCiAuXCIJJElkOiBzdHJmdGltZS4zLHYgMS40
IDE5OTMvMTIvMTUgMjA6MzM6MDAganRjIEV4cCAkCiAuXCIKLS5USCBORVdTVFJGVElNRSAz
CisuVEggbmV3c3RyZnRpbWUgMwogLlNIIE5BTUUKIHN0cmZ0aW1lIFwtIGZvcm1hdCBkYXRl
IGFuZCB0aW1lCiAuU0ggU1lOT1BTSVMKZGlmZiAtLWdpdCBhL25ld3R6c2V0LjMgYi9uZXd0
enNldC4zCmluZGV4IDA4NjE1MmEuLmUxNmFlNmIgMTAwNjQ0Ci0tLSBhL25ld3R6c2V0LjMK
KysrIGIvbmV3dHpzZXQuMwpAQCAtMSw2ICsxLDYgQEAKIC5cIiBUaGlzIGZpbGUgaXMgaW4g
dGhlIHB1YmxpYyBkb21haW4sIHNvIGNsYXJpZmllZCBhcyBvZgogLlwiIDIwMDktMDUtMTcg
YnkgQXJ0aHVyIERhdmlkIE9sc29uLgotLlRIIE5FV1RaU0VUIDMKKy5USCBuZXd0enNldCAz
CiAuU0ggTkFNRQogdHpzZXQgXC0gaW5pdGlhbGl6ZSB0aW1lIGNvbnZlcnNpb24gaW5mb3Jt
YXRpb24KIC5TSCBTWU5PUFNJUwpkaWZmIC0tZ2l0IGEvdHpmaWxlLjUgYi90emZpbGUuNQpp
bmRleCAxYmQ1NjFhLi5lYjVkNGU4IDEwMDY0NAotLS0gYS90emZpbGUuNQorKysgYi90emZp
bGUuNQpAQCAtMSw2ICsxLDYgQEAKIC5cIiBUaGlzIGZpbGUgaXMgaW4gdGhlIHB1YmxpYyBk
b21haW4sIHNvIGNsYXJpZmllZCBhcyBvZgogLlwiIDE5OTYtMDYtMDUgYnkgQXJ0aHVyIERh
dmlkIE9sc29uLgotLlRIIFRaRklMRSA1CisuVEggdHpmaWxlIDUKIC5TSCBOQU1FCiB0emZp
bGUgXC0gdGltZXpvbmUgaW5mb3JtYXRpb24KIC5TSCBERVNDUklQVElPTgpkaWZmIC0tZ2l0
IGEvdHpzZWxlY3QuOCBiL3R6c2VsZWN0LjgKaW5kZXggODQ2Yjg2Ny4uOTgyODg0OCAxMDA2
NDQKLS0tIGEvdHpzZWxlY3QuOAorKysgYi90enNlbGVjdC44CkBAIC0xLDYgKzEsNiBAQAog
LlwiIFRoaXMgZmlsZSBpcyBpbiB0aGUgcHVibGljIGRvbWFpbiwgc28gY2xhcmlmaWVkIGFz
IG9mCiAuXCIgMjAwOS0wNS0xNyBieSBBcnRodXIgRGF2aWQgT2xzb24uCi0uVEggVFpTRUxF
Q1QgOAorLlRIIHR6c2VsZWN0IDgKIC5TSCBOQU1FCiB0enNlbGVjdCBcLSBzZWxlY3QgYSB0
aW1lem9uZQogLlNIIFNZTk9QU0lTCi0tIAoyLjM5LjIKCg==

--------------v3UQ6W4ZhtGgaDQX50pD33eb--
